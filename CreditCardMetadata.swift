//
//  CreditCardMetadata.swift
//  FlatCreditCard
//
//  Created by Ampe on 9/1/18.
//

import Foundation

public class CreditCardMetadata {
    public var number: String
    public var cvv: String
    public var expiration: String
    public var name: String
    public var logo: UIImage?
    
    public init(number: String,
                cvv: String,
                expiration: String,
                name: String,
                logo: UIImage?) {
        
        self.number = number
        self.cvv = cvv
        self.expiration = expiration
        self.name = name
        self.logo = logo
    }
}

public extension CreditCardMetadata {
    public static let `default` = CreditCardMetadata(number: CreditCardViewConstants.defaultNumber,
                                                     cvv: CreditCardViewConstants.defaultCVV,
                                                     expiration: CreditCardViewConstants.defaultExpiration,
                                                     name: CreditCardViewConstants.defaultName,
                                                     logo: CreditCardViewConstants.defaultLogo)
}

