//
//  StoreViewModel.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import Foundation

@MainActor
class StoreViewModel: ObservableObject {
    
    let client = StoreHTTPClient()
    @Published var categories: [Category] = []
    @Published var products: [Product] = []
    
    func fetchCategories() async throws {
        categories = try await client.load(Resource(url: URL.allCategories))
    }
    
    func fetchProductsByCategory(_ categoryId: Int) async throws {
        products = try await client.load(Resource(url: URL.productsByCategory(categoryId)))
    }
    
    func saveProduct(_ createProductRequest: CreateProductRequest) async throws {
        
        let data = try JSONEncoder().encode(createProductRequest)
        let product: Product = try await client.load(Resource(url: URL.saveProduct, method: .post(data)))
        products.append(product)
        
    }
    
}
