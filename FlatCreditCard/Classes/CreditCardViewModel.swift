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
    
    // MARK: Reload Methods
    func reload()
}

// MARK: - Default CreditCardViewModelDataSource Conformance
public extension CreditCardViewModel {
    func number(for card: CreditCard) -> String {
        return card.number
    }
    
    func cvv(for card: CreditCard) -> String {
        return card.cvv
    }
    
    func expiration(for card: CreditCard) -> String {
        return card.expiration
    }
    
    func name(for card: CreditCard) -> String {
        return card.name
    }
    
    func logo(for card: CreditCard) -> UIImage? {
        return card.logo
    }
}

// MARK: - Default Update Method Implementation
public extension CreditCardViewModel {
    func updateNumber(to value: String) {
        creditCard.number = value
        
        reload()
    }
    
    func updateCVV(to value: String) {
        creditCard.cvv = value
        
        reload()
    }
    
    func updateExpiration(to value: String) {
        creditCard.expiration = value
        
        reload()
    }
    
    func updateName(to value: String) {
        creditCard.name = value
        
        reload()
    }
    
    func updateLogo(to value: UIImage?) {
        creditCard.logo = value
        
        reload()
    }
}

// MARK: - Default Reload Methods
public extension CreditCardViewModel {
    func reload() {
        delegate.numberUpdated(to: number(for: creditCard))
        delegate.cvvUpdated(to: cvv(for: creditCard))
        delegate.expirationUpdated(to: expiration(for: creditCard))
        delegate.nameUpdated(to: name(for: creditCard))
        delegate.logoUpdated(to: logo(for: creditCard))
    }
}
