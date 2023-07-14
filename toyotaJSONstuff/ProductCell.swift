//
//  ProductCell.swift
//  toyotaJSONstuff
//
//  Created by Dameion Dismuke on 7/13/23.
//

import SwiftUI

struct ProductCell: View {
    let product: Product
    var body: some View {
        HStack {
                                   //if let url = product.images.first {
                                   AsyncImage(url: URL(string: product.thumbnail)).frame(width: 100.0, height: 100.0).clipped().padding()
                                   //}
                                   VStack(alignment:.leading) {
                                       Text(product.title)
                                       Text(product.description)
                                   }
                               }
    }
}

/*
struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell()
    }
}
*/
