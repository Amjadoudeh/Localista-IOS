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
    @State private var tipAmount = 15
    
    let paymentTypes = ["Cash", "Credit Card", "PayPal"]
    
    let tipAmounts = [0, 10, 15, 20, 25]
    
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
            
            Section(header: Text("Add a tip?? ")) {
                Picker("Percentage: ", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("TOTAL: 100$ ")) {
                Button("Confirm order") {
                    // place order
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
