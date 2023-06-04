//
//  ProductCellView.swift
//  API-Project
//
//  Created by Lara K on 14/11/1444 AH.
//

import SwiftUI

struct ProductCellView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .firstTextBaseline) {
                Text(product.title)
                    .bold()
                Spacer()
                
                Text(product.price, format: .currency(code: Locale.currencyCode))
                    .bold()
                
                    
            }
            Text(product.description)
                .foregroundColor(Color.gray)
                .font(.system(size: 12))
        } //.background(Color.gray)
    }
}

struct ProductCellView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCellView(product: Product.preview)
    }
}
