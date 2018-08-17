//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import UIKit

public protocol CreditCardViewModel: class, CreditCardViewModelDataSource {
    
    // MARK: Initalizer
    init(_ card : CreditCard,
         delegate: CreditCardViewModelDelegate)
    
    // MARK: Delegate Property
    var delegate: CreditCardViewModelDelegate { get set }
    
    // MARK: Credit Card Storage Properties
    var creditCard: CreditCard { get }
    
    // MARK: Update Methods
    func updateNumber(to value: String)
    func updateCVV(to value: String)
    func updateExpiration(to value: String)
    func updateName(to value: String)
    func updateLogo(to value: UIImage?)
}

// MARK: - Default CreditCardViewModelDataSource Conformance
public extension CreditCardViewModel {
    func number(for input: String) -> String {
        return input
    }
    
    func cvv(for input: String) -> String {
        return input
    }
    
    func expiration(for input: String) -> String {
        return input
    }
    
    func name(for input: String) -> String {
        return input
    }
}

// MARK: - Default Update Method Implementation
public extension CreditCardViewModel {
    func updateNumber(to value: String) {
        creditCard.number = value
        
        delegate.numberUpdated(to: number(for: value))
    }
    
    func updateCVV(to value: String) {
        creditCard.cvv = value
        
        delegate.cvvUpdated(to: cvv(for: value))
    }
    
    func updateExpiration(to value: String) {
        creditCard.expiration = value
        
        delegate.expirationUpdated(to: expiration(for: value))
    }
    
    func updateName(to value: String) {
        creditCard.name = value
        
        delegate.nameUpdated(to: name(for: value))
    }
    
    func updateLogo(to value: UIImage?) {
        creditCard.logo = value
        
        delegate.logoUpdated(to: value)
    }
}
