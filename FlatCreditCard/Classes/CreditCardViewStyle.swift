//
//  CreditCardViewStyle.swift
//  FlatPaymentMethod
//
//  Created by Ampe on 8/10/18.
//

import UIKit

public enum CreditCardViewStyle {
    case fill(backgroundColor: UIColor)
    case clear(borderWidth: CGFloat, borderColor: UIColor)
}

public extension CreditCardViewStyle {
    public static let defaultBorderWidth: CGFloat = 1
    public static let defaultBorderColor: UIColor = .darkGray
}

public extension CreditCardViewStyle {
    public static let `default`: CreditCardViewStyle = .clear(borderWidth: defaultBorderWidth,
                                                              borderColor: defaultBorderColor)
}

public extension CreditCardViewStyle {
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
        case .clear(_, let borderColor):
            return borderColor
        case .fill:
            return .white
        }
    }
}
