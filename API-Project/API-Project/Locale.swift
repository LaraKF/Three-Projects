//
//  Locale.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import Foundation

extension Locale {
    
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }
    
}
