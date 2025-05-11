//
//  ViewController.swift
//  moneyConvert
//
//  Created by Eshan on 11/05/25.
//

import UIKit

var standardColor : UIColor = UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.00)
var countryCodeColor : UIColor = UIColor(red: 0.15, green: 0.15, blue: 0.55, alpha: 1.00)
var titleLabelTextColor : UIColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.00)
var titleLabelColor : UIColor = UIColor(red: 0.12, green: 0.13, blue: 0.38, alpha: 1.00)
var textFieldFontColor : UIColor = UIColor(red: 0.24, green: 0.24, blue: 0.24, alpha: 1.00)

var secondaryLabelTitleColor : UIColor = UIColor(red: 0.63, green: 0.63, blue: 0.63, alpha: 1.00)

class ViewController: UIViewController {
    
    // https://v6.exchangerate-api.com/v6/93253e429045dd59c39e056d/latest/INR
    
    @IBOutlet weak var titleLable: UILabel!
    @IBOutlet weak var backgroundGradientImage: UIImageView!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var convertedAmountLabel: UILabel!
    @IBOutlet weak var topFlag: UIImageView!
    @IBOutlet weak var bottomFlag: UIImageView!
    @IBOutlet weak var topCountryCode: UILabel!
    @IBOutlet weak var bottomCountryCode: UILabel!
    @IBOutlet weak var topDropdownBtnImage: UIImageView!
    @IBOutlet weak var bottomDropdownBtnImage: UIImageView!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var interchangeButton: UIButton!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var bottomTextField: UITextField!
    
    @IBOutlet weak var exchangeRateTitleLabel: UILabel!
    
    @IBOutlet weak var exchangeRateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backView.layer.cornerRadius = 20
        self.backView.backgroundColor = UIColor.white
        
        self.titleLable.font = UIFont.robotoBold(ofSize: 25)
        self.titleLable.textColor = titleLabelColor
        
        self.lineView.backgroundColor = standardColor
        
        self.topFlag.layer.cornerRadius = 45.0 / 2.0
        self.bottomFlag.layer.cornerRadius = 45.0 / 2.0
        
        self.topTextField.backgroundColor = standardColor
        self.topTextField.layer.cornerRadius = 8
        
        self.bottomTextField.backgroundColor = standardColor
        self.bottomTextField.layer.cornerRadius = 8
        
        self.topCountryCode.font = UIFont.robotoMedium(ofSize: 20)
        self.topCountryCode.textColor = countryCodeColor
        
        self.bottomCountryCode.font = UIFont.robotoMedium(ofSize: 20)
        self.bottomCountryCode.textColor = countryCodeColor
        
        self.amountLabel.textColor = titleLabelTextColor
        self.amountLabel.font = UIFont.robotoRegular(ofSize: 15)
        self.amountLabel.text = "Amount"
        
        self.convertedAmountLabel.textColor = titleLabelTextColor
        self.convertedAmountLabel.font = UIFont.robotoRegular(ofSize: 15)
        self.convertedAmountLabel.text = "Converted Amount"
        
        self.topTextField.font = UIFont.robotoSemiBold(ofSize: 20)
        self.bottomTextField.font = UIFont.robotoSemiBold(ofSize: 20)
        
        self.topTextField.textColor = textFieldFontColor
        self.bottomTextField.textColor = textFieldFontColor
        
        self.topTextField.bounds.inset(by: UIEdgeInsets(top: 10, left: 14, bottom: 10, right: 50))
        self.bottomTextField.bounds.inset(by: UIEdgeInsets(top: 10, left: 14, bottom: 10, right: 14))
        
        self.exchangeRateTitleLabel.text = "Indicative Exchange Rate"
        self.exchangeRateTitleLabel.font = UIFont.robotoRegular(ofSize: 16)
        self.exchangeRateTitleLabel.textColor = secondaryLabelTitleColor
        
        self.exchangeRateLabel.text = "1 SGD = 0.7367 USD"
        self.exchangeRateLabel.font = UIFont.robotoMedium(ofSize: 18)
        self.exchangeRateLabel.textColor = UIColor.black
        
        
    }
    
    @IBAction func interchangeButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func topButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func bottomButtonTapped(_ sender: Any) {
        
    }
    
}

