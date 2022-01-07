//
//  ItemDetails.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

struct ItemDetails: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            
            Text(item.name)
            Image(item.mainImage)
            Text(item.description)
        }
        .padding()
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetails(item: MenuItem.example)
    }
}
