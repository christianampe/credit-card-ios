//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import UIKit

public protocol CreditCardViewModel: class, CreditCardViewModelDataSource {
    
    // MARK: Initalizer
    init(_ delegate: CreditCardViewModelDelegate,
         cvvSecurityStyle: CardCVVSecurityStyle,
         numberSecurityStyle: CardNumberSecurityStyle,
         groupingStyle: CreditCardViewNumberGroupingStyle)
    
    // MARK: Delegate Property
    var delegate: CreditCardViewModelDelegate { get set }
    
    // MARK: Credit Card Storage Properties
    var number: String { get }
    var cvv: String { get }
    var expiration: String { get }
    var name: String { get }
    var logo: UIImage? { get }
    
    // MARK: Credit Card Style Properties
    var cvvSecurityStyle: CardCVVSecurityStyle { get }
    var numberSecurityStyle: CardNumberSecurityStyle { get }
    var groupingStyle: CreditCardViewNumberGroupingStyle { get }
    
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
        return ""
    }
    
    func cvv(for input: String) -> String {
        return ""
    }
    
    func expiration(for input: String) -> String {
        return ""
    }
    
    func name(for input: String) -> String {
        return ""
    }
    
    func logo(for input: String) -> UIImage? {
        return UIImage()
    }
}
