//
//  CreditCardWarning.swift
//  FlatCreditCard
//
//  Created by Ampe on 9/1/18.
//

import Foundation

public struct CreditCardWarning {
    public var text: String
    public var color: UIColor
    
    public init(text: String,
                color: UIColor) {
        
        self.text = text
        self.color = color
    }
}

public extension CreditCardWarning {
    static let `default` = CreditCardWarning(text: "please enter your credit card information", color: .darkGray)
    static let defaultUnsupported = CreditCardWarning(text: "this card type is unsupported", color: .red)
    static let defaultInvalid = CreditCardWarning(text: "invalid card number entered", color: .red)
}
