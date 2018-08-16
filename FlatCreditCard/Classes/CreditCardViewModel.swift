//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import UIKit

public protocol CreditCardViewModel: CreditCardViewModelDataSource {
    
    // MARK: Initalizer
    init(_ delegate: CreditCardViewModelDelegate,
         cvvSecurityStyle: CardCVVSecurityStyle,
         numberSecurityStyle: CardNumberSecurityStyle,
         groupingStyle: CreditCardViewNumberGroupingStyle)
    
    // MARK: Delegate Property
    var delegate: CreditCardViewModelDelegate { get set }
    
    // MARK: Credit Card Storage Properties
    var number: String { get set }
    var cvv: String { get set }
    var expiration: String { get set }
    var name: String { get set }
    var logo: UIImage? { get set }
    
    // MARK: Credit Card Style Properties
    var cvvSecurityStyle: CardCVVSecurityStyle { get set }
    var numberSecurityStyle: CardNumberSecurityStyle { get set }
    var groupingStyle: CreditCardViewNumberGroupingStyle { get set }
    
    // MARK: Update Methods
    func updateNumber(to value: String)
    func updateCVV(to value: String)
    func updateExpiration(to value: String)
    func updateName(to value: String)
    func updateLogo(to value: UIImage?)
}
