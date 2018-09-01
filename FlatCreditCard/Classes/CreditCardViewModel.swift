//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import UIKit

public protocol CreditCardViewModel: class, CreditCardViewModelDataSource {
    
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
    func updateWarning(to value: String)
    func updateStyle(to style: CreditCardViewStyle)
    
    // MARK: Reload Methods
    func reload()
}

// MARK: - Default Update Method Implementation
public extension CreditCardViewModel {
    func updateNumber(to value: String) {
        creditCard.metadata.number = value
        
        delegate.numberUpdated(to: number(for: creditCard))
    }
    
    func updateCVV(to value: String) {
        creditCard.metadata.cvv = value
        
        delegate.cvvUpdated(to: cvv(for: creditCard))
    }
    
    func updateExpiration(to value: String) {
        creditCard.metadata.expiration = value
        
        delegate.expirationUpdated(to: expiration(for: creditCard))
    }
    
    func updateName(to value: String) {
        creditCard.metadata.name = value
        
        delegate.nameUpdated(to: name(for: creditCard))
    }
    
    func updateLogo(to value: UIImage?) {
        creditCard.metadata.logo = value
        
        delegate.logoUpdated(to: logo(for: creditCard))
    }
    
    func updateWarning(to value: String) {
        creditCard.warning.text = value
        
        delegate.warningUpdated(to: warning(for: creditCard))
    }
    
    func updateStyle(to value: CreditCardViewStyle) {
        creditCard.style = value
        
        delegate.styleUpdated(to: style(for: creditCard))
    }
}

// MARK: - Default CreditCardViewModelDataSource Conformance
public extension CreditCardViewModel {
    func number(for card: CreditCard) -> String {
        return card.metadata.number
    }
    
    func cvv(for card: CreditCard) -> String {
        return card.metadata.cvv
    }
    
    func expiration(for card: CreditCard) -> String {
        return card.metadata.expiration
    }
    
    func name(for card: CreditCard) -> String {
        return card.metadata.name
    }
    
    func logo(for card: CreditCard) -> UIImage? {
        return card.metadata.logo
    }
    
    func warning(for card: CreditCard) -> String {
        return card.warning.text
    }
    
    func style(for card: CreditCard) -> CreditCardViewStyle {
        return card.style
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
        delegate.warningUpdated(to: warning(for: creditCard))
        delegate.styleUpdated(to: style(for: creditCard))
    }
}
