//
//  CreditCardViewConstants.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

// MARK: - UI Layout Constants
public class CreditCardViewConstants {
    public static let aspectRatio: CGFloat = 1.586
}

// MARK: Credit Card Default Values
public extension CreditCardViewConstants {
    public static let defaultNumber: String = "4000  2468  8080  0242"
    public static let defaultCVV: String = "046"
    public static let defaultExpiration: String = "12/24"
    public static let defaultName: String = "Christian Ampe"
    public static let defaultLogo: UIImage = #imageLiteral(resourceName: "mastercard")
}

