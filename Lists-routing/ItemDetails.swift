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
            ZStack (alignment: .bottomTrailing){
                Image(item.mainImage)
                Text("Photo:\(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                // just to make it not on the border
                    .offset(x:-5, y:-5) 
            }
            Text(item.description)
                .padding()
            Spacer()
        }
        
        .navigationTitle(item.name)
        // to make the title Smaller because it's not the main Page
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetails(item: MenuItem.example)
        }
    }
}
