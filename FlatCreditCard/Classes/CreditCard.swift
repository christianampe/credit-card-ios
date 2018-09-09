//
//  CreditCard.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/16/18.
//

import Foundation

public class CreditCard {
    public var metadata: CreditCardMetadata
    public var warning: CreditCardWarning
    public var style: CreditCardViewStyle
    
    public init(metadata: CreditCardMetadata,
                warning: CreditCardWarning,
                style: CreditCardViewStyle) {
        
        self.metadata = metadata
        self.warning = warning
        self.style = style
    }
}

public extension CreditCard {
    public static let `default` = CreditCard(metadata: .default,
                                             warning: .default,
                                             style: .default)
}

public extension CreditCard {
    public static let empty = CreditCard(metadata: .empty,
                                         warning: .default,
                                         style: .default)
}
