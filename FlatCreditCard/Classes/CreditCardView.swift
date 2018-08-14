//
//  CreditCardView.swift
//  FlatPaymentMethod
//
//  Created by Ampe on 8/6/18.
//

import UIKit

@IBDesignable
open class CreditCardView: UIView {
    
    // MARK: Views
    open weak var cardView: UIView!
    open weak var cardLogo: UIImageView!
    open weak var expirationLabel: UILabel!
    open weak var cvvLabel: UILabel!
    open weak var dateLabel: UILabel!
    open weak var nameLabel: UILabel!
    
    // MARK: IBInspectables
    @IBInspectable
    open var number: String = CreditCard.default.number {
        didSet {
            expirationLabel.text = number
        }
    }
    
    @IBInspectable
    open var cvv: String = CreditCard.default.cvv {
        didSet {
            cvvLabel.text = cvv
        }
    }
    
    @IBInspectable
    open var expiration: String = CreditCard.default.expiration {
        didSet {
            dateLabel.text = expiration
        }
    }
    
    @IBInspectable
    open var name: String = CreditCard.default.name {
        didSet {
            nameLabel.text = name
        }
    }
    
    @IBInspectable
    open var logoFileName: String = CreditCard.default.style.logoFileName {
        didSet {
            guard let image = UIImage(named: logoFileName) else {
                return
            }
            
            cardLogo.image = image
        }
    }
    
    // MARK: Designable Initalizers
    public convenience init() {
        
        self.init(frame: CGRect.zero)
    }
    
    public override convenience init(frame: CGRect) {
        
        self.init(frame: frame)
    }
    
    // MARK: Programmatic Initalizer
    public init(_ frame: CGRect) {

        // Create Views
        let cardView = UIView()
        self.cardView = cardView
        
        let cardLogo = UIImageView()
        self.cardLogo = cardLogo
        
        let numberLabel = UILabel()
        self.expirationLabel = numberLabel
        
        let cvvLabel = UILabel()
        self.cvvLabel = cvvLabel
        
        let dateLabel = UILabel()
        self.dateLabel = dateLabel
        
        let nameLabel = UILabel()
        self.nameLabel = nameLabel
        
        // Call Super Init
        super.init(frame: frame)
        
        // Setup Methods
        initViews()
        addViews()
        addConstraints()
    }
    
    // MARK: Storyboard Initalizer
    public required init?(coder aDecoder: NSCoder) {
        
        // Create Views
        let cardView = UIView()
        self.cardView = cardView
        
        let cardLogo = UIImageView()
        self.cardLogo = cardLogo
        
        let numberLabel = UILabel()
        self.expirationLabel = numberLabel
        
        let cvvLabel = UILabel()
        self.cvvLabel = cvvLabel
        
        let dateLabel = UILabel()
        self.dateLabel = dateLabel
        
        let nameLabel = UILabel()
        self.nameLabel = nameLabel
        
        // Call Super Init
        super.init(coder: aDecoder)
        
        // Setup Methods
        initViews()
        addViews()
        addConstraints()
    }
}

// MARK: - Private Setup Methods
private extension CreditCardView {
    
    // MARK: Style Views
    func initViews() {
        cardView.layer.borderWidth = 1
        cardView.layer.cornerRadius = 8
        cardView.layer.borderColor = UIColor.black.cgColor
        
        cardLogo.contentMode = .scaleAspectFit
        cardLogo.clipsToBounds = true
        
        expirationLabel.adjustsFontSizeToFitWidth = true
        expirationLabel.minimumScaleFactor = 0.1
        expirationLabel.lineBreakMode = .byClipping
        expirationLabel.numberOfLines = 0
        
        cvvLabel.adjustsFontSizeToFitWidth = true
        cvvLabel.minimumScaleFactor = 0.1
        cvvLabel.lineBreakMode = .byClipping
        cvvLabel.numberOfLines = 0
        
        dateLabel.adjustsFontSizeToFitWidth = true
        dateLabel.minimumScaleFactor = 0.1
        dateLabel.lineBreakMode = .byClipping
        dateLabel.numberOfLines = 0
        
        nameLabel.adjustsFontSizeToFitWidth = true
        nameLabel.minimumScaleFactor = 0.1
        nameLabel.lineBreakMode = .byClipping
        nameLabel.numberOfLines = 0
    }
    
    // MARK: Add Views To Super View
    func addViews() {
        addSubview(cardView)
        addSubview(cardLogo)
        addSubview(expirationLabel)
        addSubview(cvvLabel)
        addSubview(dateLabel)
        addSubview(nameLabel)
    }
    
    // MARK: Call Add Constraints Methods
    func addConstraints() {
        addCardViewConstraints()
        addCardLogoConstraints()
        addNumberLabelConstraints()
        addCVVLabelConstraints()
        addDateLabelConstraints()
        addNameLabelConstraints()
    }
    
    // MARK: Add Constraints To Card View
    func addCardViewConstraints() {
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        cardView.widthAnchor.constraint(equalTo: cardView.heightAnchor, multiplier: CreditCardViewConstants.aspectRatio).isActive = true
        
        if frame.width/frame.height >= CreditCardViewConstants.aspectRatio {
            cardView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            cardView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            cardView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        } else {
            cardView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            cardView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            cardView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        }
        
        cardView.layoutIfNeeded()
    }
    
    // MARK: Add Constraints To Card Logo
    func addCardLogoConstraints() {
        cardLogo.translatesAutoresizingMaskIntoConstraints = false
        
        cardLogo.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        cardLogo.topAnchor.constraint(equalTo: cardView.topAnchor, constant: cardView.frame.height/10).isActive = true
        cardLogo.heightAnchor.constraint(equalToConstant: cardView.frame.height/5).isActive = true
        cardLogo.widthAnchor.constraint(equalToConstant: cardView.frame.width/5).isActive = true
    }
    
    // MARK: Add Constraints To Name Label
    func addNameLabelConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -cardView.frame.height/10).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/10).isActive = true
    }
    
    // MARK: Add Constraints To Date Label
    func addDateLabelConstraints() {
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        dateLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        dateLabel.bottomAnchor.constraint(equalTo: nameLabel.topAnchor).isActive = true
        dateLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/15).isActive = true
    }
    
    // MARK: Add Constraints To CVV Label
    func addCVVLabelConstraints() {
        cvvLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cvvLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        cvvLabel.bottomAnchor.constraint(equalTo: dateLabel.topAnchor, constant: -cardView.frame.height/20).isActive = true
        cvvLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/20).isActive = true
    }
    
    // MARK: Add Constraints To Number Label
    func addNumberLabelConstraints() {
        expirationLabel.translatesAutoresizingMaskIntoConstraints = false

        expirationLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        expirationLabel.bottomAnchor.constraint(equalTo: cvvLabel.topAnchor).isActive = true
        expirationLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/10).isActive = true
    }
}
