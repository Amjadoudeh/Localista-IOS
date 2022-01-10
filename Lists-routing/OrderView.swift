//
//  OrderView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 08.01.22.
//

import SwiftUI
struct FullScreenViewModel: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Check Out")
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                presentationMode.wrappedValue.dismiss()
            }
    }
    
}
struct OrderView: View {
    @EnvironmentObject var order: Order
    
    @State private var isPresented = false
    
    var body: some View {
    // for this page we need a scrolling list of items
        NavigationView{
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                Section {
                    Button("Place Order") {
                        self.isPresented.toggle()
                    }
                    .fullScreenCover(isPresented: $isPresented, content: FullScreenViewModel.init)
                    }
                    
                    
                }
            }
            .navigationTitle("Order")
            .listStyle(InsetGroupedListStyle())
        }
    }



struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
            .environmentObject(Order())
    }
}
