//
//  CheckoutView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 11.01.22.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}
