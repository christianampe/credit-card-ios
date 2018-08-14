//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public protocol CreditCardViewModel {
    init(delegate: CreditCardViewModelDelegate, card: CreditCard)
    
    var delegate: CreditCardViewModelDelegate { get set }
    
    var groupingStyle: CreditCardViewNumberGroupingStyle { get set }
    var numberSecurityStyle: CardNumberSecurityStyle { get set }
    var cvvSecurityStyle: CardCVVSecurityStyle { get set }
    var style: CreditCardViewStyle { get set }
    
    var number: String { get }
    var cvv: String { get }
    var expiration: String { get }
    var name: String { get }
    var logo: UIImage? { get }
    
    func number(for input: String) -> String
    func cvv(for input: String) -> String
    func expiration(for input: String) -> String
    func name(for input: String) -> String
    func logo(for input: String) -> String
}

public protocol CreditCardViewModelDelegate {
    func numberUpdated(to number: String)
    func cvvUpdated(to cvv: String)
    func expirationUpdated(to expiration: String)
    func nameUpdated(to name: String)
    func logoUpdated(to logo: UIImage?)
}
