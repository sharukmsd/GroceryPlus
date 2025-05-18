//
//  Font+Extension.swift
//  GroceryPlus
//
//  Created by Muhammad on 18/05/2025.
//

import Foundation
import SwiftUI

enum FontName: String, CaseIterable {
    case poppinsExtraLight = "Poppins-ExtraLight"
    case poppinsThinItalic = "Poppins-ThinItalic"
    case poppinsExtraLightItalic = "Poppins-ExtraLightItalic"
    case poppinsBoldItalic = "Poppins-BoldItalic"
    case poppinsLight = "Poppins-Light"
    case poppinsMedium = "Poppins-Medium"
    case poppinsSemiBoldItalic = "Poppins-SemiBoldItalic"
    case poppinsExtraBold = "Poppins-ExtraBold"
    case poppinsExtraBoldItalic = "Poppins-ExtraBoldItalic"
    case poppinsBlack = "Poppins-Black"
    case poppinsBlackItalic = "Poppins-BlackItalic"
    case poppinsBold = "Poppins-Bold"
    case poppinsSemiBold = "Poppins-SemiBold"
    case poppinsThin = "Poppins-Thin"
    case poppinsRegular = "Poppins-Regular"
    case poppinsItalic = "Poppins-Italic"
    case poppinsMediumItalic = "Poppins-MediumItalic"
    case poppinsLightItalic = "Poppins-LightItalic"
}

enum FontStyle {
    case titleLarge, titleMedium, titleSmall, headline, headlineMedium, body, bodySmall
    
    var fontName: FontName {
        switch self {
        case .titleLarge: return .poppinsSemiBold
        case .titleMedium: return .poppinsMedium
        case .titleSmall: return .poppinsMedium
        case .headline: return .poppinsSemiBold
        case .headlineMedium: return .poppinsMedium
        case .body: return .poppinsRegular
        case .bodySmall: return .poppinsLight
        }
    }
    
    var size: CGFloat {
        switch self {
        case .titleLarge: return 30
        case .titleMedium: return 20
        case .titleSmall: return 18
        case .headline: return 16
        case .headlineMedium: return 14
        case .body: return 16
        case .bodySmall: return 14
        }
    }
}

extension Font {
    func gp(_ style: FontStyle) -> Font {
        .custom(style.fontName.rawValue, size: style.size)
    }
    func gp(_ name: FontName, size: CGFloat) -> Font {
        .custom(name.rawValue, size: size)
    }
}
