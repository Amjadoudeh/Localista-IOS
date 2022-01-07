//
//  ContentView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            // static list View
            List {
                Text("Backend")
                Text("Web")
                Text("IOS")
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
