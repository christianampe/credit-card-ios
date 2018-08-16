//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public class CreditCardViewModel {
    private var number: String
    private var cvv: String
    private var expiration: String
    private var name: String
    
    private var logo: UIImage?
    
    private var groupingStyle: CreditCardViewNumberGroupingStyle
    private var numberSecurityStyle: CardNumberSecurityStyle
    private var cvvSecurityStyle: CardCVVSecurityStyle
    private var style: CreditCardViewStyle
    
    var delegate: CreditCardViewModelDelegate
    
    init(delegate: CreditCardViewModelDelegate,
         card: CreditCard = .default,
         groupingStyle: CreditCardViewNumberGroupingStyle = .default,
         numberSecurityStyle: CardNumberSecurityStyle = .default,
         cvvSecurityStyle: CardCVVSecurityStyle = .default,
         style: CreditCardViewStyle = .default) {
        
        self.delegate = delegate
        
        self.number = card.number
        self.cvv = card.cvv
        self.expiration = card.expiration
        self.name = card.name
        
        self.groupingStyle = groupingStyle
        self.numberSecurityStyle = numberSecurityStyle
        self.cvvSecurityStyle = cvvSecurityStyle
        self.style = style
    }
}

public extension CreditCardViewModel {
    func updateNumber(to value: String) {
        self.number = value
        
        delegate.numberUpdated(to: number(for: value))
    }
    
    func updateCVV(to value: String) {
        self.cvv = value
        
        delegate.cvvUpdated(to: cvv(for: value))
    }
    
    func updateExpiration(to value: String) {
        self.expiration = value
        
        delegate.expirationUpdated(to: expiration(for: value))
    }
    
    func updateName(to value: String) {
        self.name = value
        
        delegate.nameUpdated(to: name(for: value))
    }
}

// MARK: - View Model Data Source Conformance
extension CreditCardViewModel: CreditCardViewModelDataSource {
    public func number(for input: String) -> String {
        let grouped = groupingStyle.groupedText(for: input)
        let secured = numberSecurityStyle.secureText(for: grouped)
        
        return secured
    }
    
    public func cvv(for input: String) -> String {
        let secured = cvvSecurityStyle.secureText(for: input)
        return secured
    }
    
    public func expiration(for input: String) -> String {
        return input
    }
    
    public func name(for input: String) -> String {
        return name
    }
    
    public func logo(for input: String) -> UIImage? {
        return nil
    }
}
