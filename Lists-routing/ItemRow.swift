//
//  ItemRow.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

struct ItemRow: View {
    // dictionary for simples and Colours to show in the screen, then we don't have to style each one alone
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    let item: MenuItem
    
    var body: some View {
        HStack{
            // let's style it a bit
            Image(item.thumbnailImage)
            // we use clipshape to change the shape of it
                .clipShape(Circle())
            // overlady to make the border clear to see
                .overlay(Circle().stroke(Color.gray, lineWidth: 1.7))
            VStack(alignment: .leading) {
                Text(item.name).font(.headline)
                Text("$\(item.price)")
            }
            
            Spacer()
            
            // we must add and Id to make unique and the only way to make a string has unique ID is the string itself
            ForEach(item.restrictions, id: \.self) {
                restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    // if you don't find any color then use balck
                    .background(colors[restriction,default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
            }
        }
        .padding()
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
