//
//  ItemRow.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

struct ItemRow: View {
    
    let Item: MenuItem
    
    var body: some View {
        Text(Item.name)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(Item: MenuItem.example)
    }
}
