//
//  Product.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import Foundation

struct Product: Codable, Hashable {
    
    var id: Int?
    let title: String
    let price: Double
    let description: String
    let images: [URL]?
    let category: Category
    
}
