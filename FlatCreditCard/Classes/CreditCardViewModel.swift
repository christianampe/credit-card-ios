//
//  CreditCardViewModel.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public protocol CreditCardViewModel: CreditCardViewModelDataSource {
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
}
