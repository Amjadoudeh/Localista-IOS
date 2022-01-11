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
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    
    
    let paymentTypes = ["Cash", "Credit Card", "PayPal"]
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection:
                        $paymentType) {
                    ForEach(paymentTypes, id: \.self){
                        Text($0)
                    }
                }
                
                Toggle("Add Localista loyalty card",
                       isOn:$addLoyaltyDetails.animation())
                if addLoyaltyDetails {
                TextField("Enter your Localista ID",
                          text: $loyaltyNumber)
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
