//
//  CreditCardViewModelDataSource.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/14/18.
//

import Foundation

public protocol CreditCardViewModelDataSource {
    func number(for card: CreditCard) -> String
    func cvv(for card: CreditCard) -> String
    func expiration(for card: CreditCard) -> String
    func name(for card: CreditCard) -> String
    func logo(for card: CreditCard) -> UIImage?
    func warning(for card: CreditCard) -> String
    func style(for card: CreditCard) -> CreditCardViewStyle
}
