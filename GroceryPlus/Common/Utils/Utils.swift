//
//  Utils.swift
//  NEOChat
//
//  Created by Muhammad on 02/05/2025.
//

import Foundation
import SwiftUI

struct Utils {
    static func listInstalledFonts(
        for fontName: String = "Poppins",
        listAll: Bool = false
    ) {
        #if DEBUG
        let fontFamilies = UIFont.familyNames.sorted()
        for family in fontFamilies {
            if listAll {
                ILogger.log(family)
            } else {
                if family.contains(fontName) {
                    ILogger.log(family)
                }
            }
            for font in UIFont.fontNames(forFamilyName: family).sorted() {
                if listAll {
                    ILogger.log("\t\(font)")
                    continue
                }
                if font.contains(fontName) {
                    ILogger.log("\t\(font)")
                }
            }
        }
        #endif
    }
    
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension) else {
            fatalError("Couldn't find font file: \(fontName) with extension \(fontExtension)")
        }
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, .process, &error)
        if let error = error?.takeRetainedValue() {
            fatalError("Failed to register font: \(error)")
        }
    }
    
    static func registerFonts() {
        if let fontNames = Bundle.main.urls(forResourcesWithExtension: "ttf", subdirectory: nil) {
            fontNames.forEach { url in
                if let fontName = url.deletingPathExtension().lastPathComponent as String? {
                    registerFont(bundle: .main, fontName: fontName, fontExtension: "ttf")
                }
            }
        }
    }
}
