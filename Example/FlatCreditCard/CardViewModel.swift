//
//  CardViewModel.swift
//  FlatCreditCard_Example
//
//  Created by Ampe on 8/16/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import FlatCreditCard

class CardViewModel: CreditCardViewModel {
    var creditCard: CreditCard
    var delegate: CreditCardViewModelDelegate
    
    func logo(for input: String) -> UIImage? {
        return nil
    }
    
    required init(_ card: CreditCard = .default,
                  delegate: CreditCardViewModelDelegate) {
        
        self.creditCard = card
        self.delegate = delegate
    }
}
