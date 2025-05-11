//
//  AppDelegate.swift
//  moneyConvert
//
//  Created by Eshan on 11/05/25.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Initial setup
        
        if let currencies = loadCurrencies() {
            for currency in currencies {
                CurrencyManager.shared.addCurrency(currency)
            }
        } else {
            print("Failed to load currencies.")
        }
        
        return true
    }
    
    func loadCurrencies() -> [Currency]? {
        // Get the path to the JSON file in the app's bundle
        guard let url = Bundle.main.url(forResource: "currency_code_country_currency", withExtension: "json") else {
            print("Could not find the file in the bundle.")
            return nil
        }

        do {
            // Load the data from the file
            let data = try Data(contentsOf: url)
            
            // Decode the JSON into an array of Currency objects
            let decoder = JSONDecoder()
            let currencies = try decoder.decode([Currency].self, from: data)
            
            return currencies
        } catch {
            print("Error loading or decoding JSON: \(error)")
            return nil
        }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Pause tasks
        
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Save data
        
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Undo changes
        
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart tasks
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Save data
        
    }
    
    
}

