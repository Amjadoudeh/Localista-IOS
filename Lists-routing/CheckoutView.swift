//
//  CheckoutView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 11.01.22.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @State private var paymentType = "Cash"
    
    let paymentTypes = ["Cash", "Credit Card", "PayPal"]
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay?", selection:
                        $paymentType) {
                    ForEach(paymentTypes, id: \.self){
                        Text($0)
                    }
                }
                
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}
