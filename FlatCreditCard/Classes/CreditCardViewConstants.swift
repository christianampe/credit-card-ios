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
    public static let defaultNumber: String = "4000400040004000"
    public static let defaultCVV: String = "400"
    public static let defaultExpiration: String = "12/24"
    public static let defaultName: String = "Christian Ampe"
    public static let defaultLogo: UIImage? = UIImage.for(#imageLiteral(resourceName: "mastercard"))
    public static let defaultWarning: String = "please enter your credit card information"
}

