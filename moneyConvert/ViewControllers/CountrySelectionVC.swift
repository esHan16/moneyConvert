//
//  CountrySelectionVC.swift
//  moneyConvert
//
//  Created by Eshan on 12/05/25.
//

import UIKit

class CountrySelectionVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var countryNameTV: UITableView!
    
    var currencies : [Currency] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.countryNameTV.delegate = self
        self.countryNameTV.dataSource = self
        self.countryNameTV.register(UINib(nibName: "CountryNameTVC", bundle: nil), forCellReuseIdentifier: "CountryNameTVC")
        
        currencies = CurrencyManager.shared.allCurrencies()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currencies.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CountryNameTVC", for: indexPath) as? CountryNameTVC else {
            return UITableViewCell()
        }
        
        cell.titleLabel.text = "\(currencies[indexPath.row].country) (\(currencies[indexPath.row].code))"

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45.0
    }
    
    



}
