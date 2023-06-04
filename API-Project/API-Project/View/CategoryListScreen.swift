//
//  CategoryListScreen.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import SwiftUI

struct CategoryListScreen: View {
    
    @EnvironmentObject private var storeViewModel: StoreViewModel
    @State private var errorMessage = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                List(storeViewModel.categories, id: \.id) { category in
                    
                    NavigationLink(value: category) {
                        HStack {
                            AsyncImage(url: category.image) { image in
                                image.resizable()
                                    .frame(maxWidth: 100, maxHeight: 100)
                                    .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                            } placeholder: {
                                ProgressView()
                            }
                            
                            Text(category.name)
                        }
                    }
                    
                    
                }
                    //.background(Color.gray)
//                   .scrollContentBackground(.hidden)
//                   .background(Color.mint.edgesIgnoringSafeArea(.all))
                
                  .navigationDestination(for: Category.self, destination: { category in
                    ProductListScreen(category: category)
                })
                
                
                .task {
                    do {
                        try await storeViewModel.fetchCategories()
                    } catch {
                        errorMessage = error.localizedDescription
                    }
                }
                Text(errorMessage)
            }.navigationTitle("Store")
        }
        
    }
}

struct CategoryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListScreen().environmentObject(StoreViewModel())
    }
}
