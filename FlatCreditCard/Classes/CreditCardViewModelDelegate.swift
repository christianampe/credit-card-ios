//
//  CreditCardViewModelDelegate.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/14/18.
//

import UIKit

public protocol CreditCardViewModelDelegate {
    func numberUpdated(to number: String)
    func cvvUpdated(to cvv: String)
    func expirationUpdated(to expiration: String)
    func nameUpdated(to name: String)
    func logoUpdated(to logo: UIImage?)
    func warningUpdated(to warning: String)
    func styleUpdated(to style: CreditCardViewStyle)
}
