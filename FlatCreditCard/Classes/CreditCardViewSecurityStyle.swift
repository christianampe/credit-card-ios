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
    public static var `default`: CardNumberSecurityStyle = .show(last: 4, secureCharacter: "•")
}

public extension CardNumberSecurityStyle {
    func secureText(for input: String) -> String {
        switch self {
        case .on(let secureCharacter):
            return String(repeatElement(secureCharacter, count: input.count))
        case .show(let lastNCharacterToShow, let secureCharacter):
            var secureText = String(repeatElement(secureCharacter, count: input.count - lastNCharacterToShow))
            secureText.append(contentsOf: input.suffix(4))
            return secureText
        case .off:
            return input
        }
    }
}

public enum CardCVVSecurityStyle {
    case on
    case off
}

public extension CardCVVSecurityStyle {
    public static var `default`: CardCVVSecurityStyle = .on
}
