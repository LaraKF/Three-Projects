//
//  ProductListScreen.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import SwiftUI

struct ProductListScreen: View {
    
    let category: Category
    @State private var isPresented: Bool = false
    @EnvironmentObject private var storeViewModel: StoreViewModel
    
    var body: some View {
        
        VStack {
            List(storeViewModel.products, id: \.id) { product in
                NavigationLink(value: product) {
                    ProductCellView(product: product)
                }
            }
//            .background(Color.gray)
//                .scrollContentBackground(.hidden)
//                .background(Color.mint.edgesIgnoringSafeArea(.all))
            
                .navigationDestination(for: Product.self, destination: { product in
                    ProductDetailScreen(product: product)
                })
                .listStyle(.plain)
                .task {
                    do {
                        try await storeViewModel.fetchProductsByCategory(category.id)
                    } catch {
                        print(error)
                    }
                }.navigationTitle(category.name)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Add Product") {
                            isPresented = true
                        }
                    }
                }.sheet(isPresented: $isPresented) {
                    NavigationStack {
                        AddProductScreen()
                    }
                }
        } //.background(Color.gray)
    }
     
}

struct ProductListScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ProductListScreen(category: Category(id: 1, name: "Clothes", image: URL(string: "https://images.unsplash.com/photo-1620799140408-edc6dcb6d633?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1072&q=80")!))
                .environmentObject(StoreViewModel())
        }
    }
}
