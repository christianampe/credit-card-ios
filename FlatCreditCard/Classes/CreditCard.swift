//
//  CreditCard.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public struct CreditCard {
    public let style: CreditCardViewStyle
    public let number: String
    public let cvv: String
    public let expiration: String
    public let name: String

}

public extension CreditCard {
    public static let `default`: CreditCard = CreditCard(style: .default,
                                                         number: "123456789098",
                                                         cvv: "123",
                                                         expiration: "12/31",
                                                         name: "Christian Ampe")
}
