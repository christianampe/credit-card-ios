//
//  CreditCardViewConfig.swift
//  FlatPaymentMethod
//
//  Created by Ampe on 8/10/18.
//

import Foundation

public struct CreditCardViewConfig {
    public let backgroundColor: UIColor
    public let borderWidth: CGFloat
    public let borderColor: UIColor
    public let textColor: UIColor
    public let numberGrouping: CreditCardViewNumberGroupingStyle
    public let numberSecurity: CardNumberSecurityStyle
    public let cvvLength: Int
    public let cvvSecurity: CardCVVSecurityStyle
}

public extension CreditCardViewConfig {
    public static let `default` = CreditCardViewConfig(backgroundColor: .clear,
                                                       borderWidth: 1,
                                                       borderColor: .black,
                                                       textColor: .black,
                                                       numberGrouping: .default,
                                                       numberSecurity: .default,
                                                       cvvLength: 3,
                                                       cvvSecurity: .default)
}
