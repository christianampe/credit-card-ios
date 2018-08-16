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
    private weak var cardView: UIView!
    private weak var cardLogo: UIImageView!
    private weak var numberLabel: UILabel!
    private weak var cvvLabel: UILabel!
    private weak var expirationLabel: UILabel!
    private weak var nameLabel: UILabel!
    
    // MARK: Properties
    private var viewModel: CreditCardViewModel?
    
    // MARK: IBInspectables
    @IBInspectable
    public var number: String = CreditCard.default.number {
        didSet {
            guard let viewModel = viewModel else {
                numberLabel.text = number
                return
            }
            
            viewModel.updateNumber(to: number)
        }
    }
    
    @IBInspectable
    public var cvv: String = CreditCard.default.cvv {
        didSet {
            guard let viewModel = viewModel else {
                cvvLabel.text = cvv
                return
            }
            
            viewModel.updateCVV(to: cvv)
        }
    }
    
    @IBInspectable
    public var expiration: String = CreditCard.default.expiration {
        didSet {
            guard let viewModel = viewModel else {
                expirationLabel.text = expiration
                return
            }
            
            viewModel.updateExpiration(to: expiration)
        }
    }
    
    @IBInspectable
    public var name: String = CreditCard.default.name {
        didSet {
            guard let viewModel = viewModel else {
                nameLabel.text = name
                return
            }
            
            viewModel.updateName(to: name)
        }
    }
    
    @IBInspectable
    public var logo: UIImage? = nil {
        didSet {
            guard let viewModel = viewModel else {
                guard let image = logo else {
                    return
                }
                
                cardLogo.image = image
                return
            }
            
            viewModel.updateLogo(to: logo)
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
        self.numberLabel = numberLabel
        
        let cvvLabel = UILabel()
        self.cvvLabel = cvvLabel
        
        let expirationLabel = UILabel()
        self.expirationLabel = expirationLabel
        
        let nameLabel = UILabel()
        self.nameLabel = nameLabel
        
        // Call Super Init
        super.init(frame: frame)
        
        // Setup Methods
        initViews()
        styleViews(.default)
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
        self.numberLabel = numberLabel
        
        let cvvLabel = UILabel()
        self.cvvLabel = cvvLabel
        
        let expirationLabel = UILabel()
        self.expirationLabel = expirationLabel
        
        let nameLabel = UILabel()
        self.nameLabel = nameLabel
        
        // Call Super Init
        super.init(coder: aDecoder)
        
        // Setup Methods
        initViews()
        styleViews(.default)
        addViews()
        addConstraints()
    }
}

// MARK: - Public Setup Methods
public extension CreditCardView {
    func setViewModel(_ viewModel: CreditCardViewModel) {
        self.viewModel = viewModel
    }
    
    func setStyle(_ style: CreditCardViewStyle = .default) {
        styleViews(style)
    }
}

// MARK: - Private Setup Methods
private extension CreditCardView {
    
    // MARK: Inital View Setup
    func initViews() {
        cardView.layer.cornerRadius = 8
        
        cardLogo.contentMode = .scaleAspectFit
        cardLogo.clipsToBounds = true
        
        numberLabel.adjustsFontSizeToFitWidth = true
        numberLabel.minimumScaleFactor = 0.1
        numberLabel.lineBreakMode = .byClipping
        numberLabel.numberOfLines = 0
        
        cvvLabel.adjustsFontSizeToFitWidth = true
        cvvLabel.minimumScaleFactor = 0.1
        cvvLabel.lineBreakMode = .byClipping
        cvvLabel.numberOfLines = 0
        
        expirationLabel.adjustsFontSizeToFitWidth = true
        expirationLabel.minimumScaleFactor = 0.1
        expirationLabel.lineBreakMode = .byClipping
        expirationLabel.numberOfLines = 0
        
        nameLabel.adjustsFontSizeToFitWidth = true
        nameLabel.minimumScaleFactor = 0.1
        nameLabel.lineBreakMode = .byClipping
        nameLabel.numberOfLines = 0
    }
    
    // MARK: Style Views
    func styleViews(_ style: CreditCardViewStyle) {
        cardView.layer.borderWidth = style.borderWidth
        cardView.backgroundColor = style.backgroundColor
        cardView.layer.borderColor = style.borderColor.cgColor
        
        setTextColor(style.textColor)
    }
    
    // MARK: Set Global Text Color
    func setTextColor(_ color: UIColor) {
        numberLabel.textColor = color
        cvvLabel.textColor = color
        expirationLabel.textColor = color
        nameLabel.textColor = color
    }
    
    // MARK: Add Views To Super View
    func addViews() {
        addSubview(cardView)
        addSubview(cardLogo)
        addSubview(numberLabel)
        addSubview(cvvLabel)
        addSubview(expirationLabel)
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
    
    // MARK: Add Constraints To Name Label
    func addNameLabelConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -cardView.frame.height/10).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/10).isActive = true
    }
    
    // MARK: Add Constraints To Expiration Label
    func addDateLabelConstraints() {
        expirationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        expirationLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        expirationLabel.bottomAnchor.constraint(equalTo: nameLabel.topAnchor).isActive = true
        expirationLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/15).isActive = true
    }
    
    // MARK: Add Constraints To CVV Label
    func addCVVLabelConstraints() {
        cvvLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cvvLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        cvvLabel.bottomAnchor.constraint(equalTo: expirationLabel.topAnchor, constant: -cardView.frame.height/20).isActive = true
        cvvLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/20).isActive = true
    }
    
    // MARK: Add Constraints To Number Label
    func addNumberLabelConstraints() {
        numberLabel.translatesAutoresizingMaskIntoConstraints = false

        numberLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        numberLabel.bottomAnchor.constraint(equalTo: cvvLabel.topAnchor).isActive = true
        numberLabel.heightAnchor.constraint(equalToConstant: cardView.frame.height/10).isActive = true
    }
    
    // MARK: Add Constraints To Card Logo
    func addCardLogoConstraints() {
        cardLogo.translatesAutoresizingMaskIntoConstraints = false
        
        cardLogo.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: cardView.frame.height/10).isActive = true
        cardLogo.topAnchor.constraint(equalTo: cardView.topAnchor, constant: cardView.frame.height/10).isActive = true
        cardLogo.heightAnchor.constraint(equalToConstant: cardView.frame.height/5).isActive = true
        cardLogo.widthAnchor.constraint(equalToConstant: cardView.frame.width/5).isActive = true
    }
}

// MARK: - Credit Card View Model Delegate Conformance
extension CreditCardView: CreditCardViewModelDelegate {
    public func numberUpdated(to number: String) {
        self.number = number
    }
    
    public func cvvUpdated(to cvv: String) {
        self.cvv = cvv
    }
    
    public func expirationUpdated(to expiration: String) {
        self.expiration = expiration
    }
    
    public func nameUpdated(to name: String) {
        self.name = name
    }
    
    public func logoUpdated(to logo: UIImage?) {
        self.logo = logo
    }
}
