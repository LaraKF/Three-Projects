//
//  CreateProductRequest.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import Foundation

struct CreateProductRequest: Encodable {
    
    let title: String
    let price: Double
    let description: String
    let categoryId: Int
    let images: [URL]
    
}
