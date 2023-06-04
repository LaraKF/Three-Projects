//
//  ProductViewModel.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import Foundation

extension Product {
    
    static var preview: Product {
        Product(id: 1, title: "Handmade Fresh Table" , price: 687, description: "Andy shoes are designed to keeping in...", images: [URL(string: "https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1544&q=80")!], category: Category.preview)
    }
    
}
