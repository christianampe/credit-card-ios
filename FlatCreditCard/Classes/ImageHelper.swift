//
//  ImageHelper.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public class ImageHelper {
    public static func image(for name: String) -> UIImage? {
        return UIImage(named: name, in: Bundle(for: self), compatibleWith: nil)
    }
}
