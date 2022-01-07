//
//  ContentView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Web")
            Text("Backend")
            Text("IOS")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
