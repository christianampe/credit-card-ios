//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public class CreditCardViewModel {
    var number: String
    var cvv: String
    var expiration: String
    var name: String
    
    var logo: UIImage?
    
    var groupingStyle: CreditCardViewNumberGroupingStyle
    var numberSecurityStyle: CardNumberSecurityStyle
    var cvvSecurityStyle: CardCVVSecurityStyle
    var style: CreditCardViewStyle
    
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

extension CreditCardViewModel: CreditCardViewModelDataSource {
    public func number(for input: String) -> String {
        
    }
    
    public func cvv(for input: String) -> String {
        
    }
    
    public func expiration(for input: String) -> String {
        
    }
    
    public func name(for input: String) -> String {
        
    }
    
    public func logo(for input: String) -> UIImage? {
        
    }
}
