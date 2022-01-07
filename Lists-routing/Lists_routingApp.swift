//
//  Lists_routingApp.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 07.01.22.
//

import SwiftUI

@main
struct Lists_routingApp: App {
    // @StateObject is a property wrapper, it's responsible to keep the object alive throughout the life of our app!
    // to keep the editing on sync in different pages
    @StateObject var order = Order()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
