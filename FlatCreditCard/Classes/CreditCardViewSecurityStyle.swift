//
//  CreditCardViewSecurityStyle.swift
//  FlatPaymentMethod
//
//  Created by Ampe on 8/10/18.
//

import Foundation

public enum CardNumberSecurityStyle {
    case on
    case show(last: Int)
    case off
}

public extension CardNumberSecurityStyle {
    public static var `default`: CardNumberSecurityStyle = .show(last: 4)
}

public enum CardCVVSecurityStyle {
    case on
    case off
}

public extension CardCVVSecurityStyle {
    public static var `default`: CardCVVSecurityStyle = .on
}
