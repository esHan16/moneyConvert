//
//  CurrencyManager.swift
//  moneyConvert
//
//  Created by Eshan on 11/05/25.
//

import Foundation


class CurrencyManager {
    
    // MARK: - Shared Instance (Singleton)
    static let shared = CurrencyManager()
    
    // MARK: - Properties
    private(set) var currencies: [Currency] = []
    
    // Private initializer to prevent multiple instances
    private init() {}
    
    // Save a new currency to the list
    func addCurrency(_ currency: Currency) {
        currencies.append(currency)
    }
    
    // Remove a currency by code
    func removeCurrency(withCode code: String) {
        currencies.removeAll { $0.code == code }
    }
    
    func allCurrencies() -> [Currency] {
        return currencies
    }
    
    // Get currency by code
    func getCurrency(byCode code: String) -> Currency? {
        return currencies.first { $0.code == code }
    }
}
