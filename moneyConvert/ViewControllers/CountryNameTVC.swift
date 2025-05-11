//
//  CountryNameTVC.swift
//  moneyConvert
//
//  Created by Eshan on 12/05/25.
//

import UIKit

class CountryNameTVC: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel.font = UIFont.robotoRegular(ofSize: 15)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
