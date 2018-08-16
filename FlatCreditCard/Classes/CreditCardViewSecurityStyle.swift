//
//  CreditCardViewSecurityStyle.swift
//  FlatPaymentMethod
//
//  Created by Ampe on 8/10/18.
//

import Foundation

public enum CardNumberSecurityStyle {
    case on(secureCharacter: Character)
    case show(last: Int, secureCharacter: Character)
    case off
}

public extension CardNumberSecurityStyle {
    public func secureText(for input: String) -> String {
        switch self {
        case .on(let secureCharacter):
            return String(repeatElement(secureCharacter, count: input.count))
        case .show(let lastNCharacterToShow, let secureCharacter):
            guard input.count >= lastNCharacterToShow else {
                return String(repeatElement(secureCharacter, count: input.count))
            }
            
            var secureText = String(repeatElement(secureCharacter, count: input.count - lastNCharacterToShow))
            secureText.append(contentsOf: input.suffix(4))
            return secureText
        case .off:
            return input
        }
    }
}

public extension CardNumberSecurityStyle {
    public static var `default`: CardNumberSecurityStyle = .show(last: 4,
                                                                 secureCharacter: "•")
}

public enum CardCVVSecurityStyle {
    case on(secureCharacter: Character)
    case off
}

public extension CardCVVSecurityStyle {
    public func secureText(for input: String) -> String {
        switch self {
        case .on(let secureCharacter):
            return String(repeatElement(secureCharacter, count: input.count))
        case .off:
            return input
        }
    }
}

public extension CardCVVSecurityStyle {
    public static var `default`: CardCVVSecurityStyle = .on(secureCharacter: "•")
}
