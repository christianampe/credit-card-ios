//
//  ImageHelper.swift
//  FlatCreditCard
//
//  Created by Ampe on 8/13/18.
//

import Foundation

public struct ImageHelper {
    private static var podsBundle: Bundle {
        let bundle = Bundle(for: ImageHelper.self)
        return Bundle(url: bundle.url(forResource: "YourClass",
                                      withExtension: "bundle")!)!
    }
    
    private static func imageFor(name imageName: String) -> UIImage {
        return UIImage.init(named: imageName, in: podsBundle, compatibleWith: nil)!
    }
}
