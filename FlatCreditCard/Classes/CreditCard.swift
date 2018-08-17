//
//  CreditCard.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/16/18.
//

import Foundation

public struct CreditCard {
    let number: String
    let cvv: String
    let expiration: String
    let name: String
    let logo: UIImage?
}

public extension CreditCard {
    public static let `default` = CreditCard(number: CreditCardViewConstants.defaultNumber,
                                             cvv: CreditCardViewConstants.defaultCVV,
                                             expiration: CreditCardViewConstants.defaultExpiration,
                                             name: CreditCardViewConstants.defaultName,
                                             logo: CreditCardViewConstants.defaultLogo)
}
