//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public protocol CreditCardViewModel {
    var card: CreditCard { get set }
    
    var number: String { get }
    var cvv: String { get }
    var expiration: String { get }
    var name: String { get }
    var logo: UIImage { get }
}

public protocol CreditCardViewModelDelegate {
    func numberUpdated(to number: String)
    func cvvUpdated(to cvv: String)
    func expirationUpdated(to expiration: String)
    func nameUpdated(to name: String)
    func logoUpdated(to logo: UIImage)
}
