//
//  CreditCardViewModelDataSource.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/14/18.
//

import Foundation

public protocol CreditCardViewModelDataSource {
    func number(for input: String) -> String
    func cvv(for input: String) -> String
    func expiration(for input: String) -> String
    func name(for input: String) -> String
    func logo(for input: String) -> String
}
