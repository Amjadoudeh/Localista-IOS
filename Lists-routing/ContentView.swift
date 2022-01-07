//
//  ContentView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

struct ContentView: View {
    // to fetch out data from the Json file we have to add a new perop where we must decode the Json file using a function provided in our Helper file in the Bundler extension
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            // static list View
            List {
                ForEach(menu) { Section in
                    Text(Section.name)
                }
            }
            .navigationTitle("Core listener")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
