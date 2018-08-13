//
//  CreditCardStyle.swift
//  FlatPaymentMethod
//
//  Created by Ampe on 8/10/18.
//

import Foundation

public enum CreditCardStyle {
    case fill(backgroundColor: UIColor)
    case clear(borderWidth: CGFloat, borderColor: UIColor)
}

public extension CreditCardStyle {
    public static let defaultBorderWidth: CGFloat = 1
    public static let defaultBorderColor: UIColor = .black
}

public extension CreditCardStyle {
    public static let defaultLogoFileName: String = "visa"
    public static let defaultLogoLightName: String = "-light"
    public static let defaultLogoFileExtension: String = ".png"
}

public extension CreditCardStyle {
    public static let `default`: CreditCardStyle = .clear(borderWidth: defaultBorderWidth,
                                                          borderColor: defaultBorderColor)
}

public extension CreditCardStyle {
    public var backgroundColor: UIColor {
        switch self {
        case .clear:
            return .clear
        case .fill(let backgroundColor):
            return backgroundColor
        }
    }
    
    public var borderWidth: CGFloat {
        switch self {
        case .clear(let borderWidth, _):
            return borderWidth
        case .fill:
            return 0
        }
    }
    
    public var borderColor: UIColor {
        switch self {
        case .clear(_, let borderColor):
            return borderColor
        case .fill:
            return .clear
        }
    }
    
    public var textColor: UIColor {
        switch self {
        case .clear:
            return .black
        case .fill:
            return .white
        }
    }
    
    public var logoFileName: String {
        switch self {
        case .clear:
            return CreditCardStyle.defaultLogoFileName +
                CreditCardStyle.defaultLogoFileExtension
        case .fill:
            return CreditCardStyle.defaultLogoFileName +
                CreditCardStyle.defaultLogoLightName +
                CreditCardStyle.defaultLogoFileExtension
        }
    }
    
    public var numberSecurity: CardNumberSecurityStyle {
        return .default
    }
    
    public var ccvSecurity: CardCVVSecurityStyle {
        return .default
    }
}
