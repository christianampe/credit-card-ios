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
    @IBOutlet weak var creditView: CreditCardView!
    @IBOutlet weak var textField: UITextField!
}

extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        creditView.setViewModel(CardViewModel(delegate: creditView))
    }
}

extension ViewController {
    @IBAction func didEnterText(_ sender: Any) {
        creditView.viewModel.updateNumber(to: textField.text ?? "")
    }
}
