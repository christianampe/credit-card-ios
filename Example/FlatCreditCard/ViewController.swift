//
//  ViewController.swift
//  FlatCreditCard
//
//  Created by christianampe on 08/13/2018.
//  Copyright (c) 2018 christianampe. All rights reserved.
//

import UIKit
import FlatCreditCard

class ViewController: UIViewController {
    @IBOutlet weak var cardView: CreditCardView!
    @IBOutlet weak var textField: UITextField!
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.setStyle(.fill(backgroundColor: .gray))
    }
}

extension ViewController {
    @IBAction func didEnterText(_ sender: Any) {
        cardView.number = textField.text ?? ""
    }
}

