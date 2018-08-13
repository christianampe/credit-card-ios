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
    public let logo: UIImage
    public let numberGrouping: [Int]
    public let numberSecurity: CardNumberSecurityStyle
    public let cvvLength: Int
    public let cvvSecurity: CardCVVSecurityStyle
}
