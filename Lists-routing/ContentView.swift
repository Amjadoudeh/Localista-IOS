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
            // dynamic list View
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        
                        ForEach(section.items) { item in
                            ItemRow(item : item)
                            
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
