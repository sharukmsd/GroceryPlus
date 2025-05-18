//
//  ILogger.swift
//
//  Created by Muhammad on 15/05/2025.
//

///  A lightweight logging utility for debugging and error tracking.
///  Supports multiple log levels and provides contextual information about log messages.
///  - Note: This utility is only active in debug mode.

import Foundation
import os

/// A utility for logging messages in debug mode.
///
/// The `ILogger` struct provides static methods to log messages with different severity levels.
/// It automatically includes file name, function, and line number for better debugging context.
public struct ILogger {
    private static let logger = Logger(subsystem: Bundle.main.bundleIdentifier ?? "com.ilogger", category: "ILogger")
    internal static var logLevel: LogLevel = .info

    /// Represents different levels of logging severity.
    public enum LogLevel {
        /** No logs */
        case none
        /** Info logs */
        case info
        /** Warning logs */
        case warning
        /** Error logs */
        case error
        /** Debug logs */
        case debug
        
        var osLogType: OSLogType? {
            switch self {
            case .none: return nil
            case .info: return .info
            case .warning: return .fault
            case .error: return .error
            case .debug: return .debug
            }
        }
    }
    
    /// Logs a simple message with a specified log level.
    ///
    /// - Parameters:
    ///   - message: The message to be logged.
    ///   - level: The severity level of the log. Defaults to `.info`.
    static func log(_ message: String) {
        guard let level = logLevel.osLogType else { return }
        #if DEBUG
        logger.log(level: level, "\(message)")
        #endif
    }
    
    /// Logs any type of message with additional debugging context.
    ///
    /// - Parameters:
    ///   - message: The message or object to be logged.
    ///   - level: The severity level of the log. Defaults to `.info`.
    ///   - file: The file where the log is triggered. Defaults to `#file`.
    ///   - function: The function where the log is triggered. Defaults to `#function`.
    ///   - line: The line number where the log is triggered. Defaults to `#line`.
    static func log(
        _ message: Any,
        file: String = #file,
        function: String = #function,
        line: Int = #line
    ) {
        guard let level = logLevel.osLogType else { return }
        #if DEBUG
        let fileName = (file as NSString).lastPathComponent
        logger.log(level: level, "\(fileName):\(line) \(function) - \(String(describing: message))")
        #endif
    }
}

/// Defines errors that can be used in logging.
enum LogError: Error {
    case someError
}

extension ILogger {
    /// Example usage of the `ILogger` logging utility.
    /// This demoent severity levels.nstrates logging messages at differ
    static func example() {
        ILogger.log("Info log")
        ILogger.log("Warning log")
        ILogger.log("Error log")
        ILogger.log("Debug log")
        ILogger.log(LogError.someError)
    }
}
