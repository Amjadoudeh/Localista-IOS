//
//  OrderView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 08.01.22.
//

import SwiftUI

struct FullScreenViewModel: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var NameYourList = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            HStack{
                
                Button("cancel"){
                    presentationMode.wrappedValue.dismiss()
                }
                Spacer(minLength: 3)
                Text("Create an Order list").font(.title2)
                Spacer(minLength: 3)
                Button("save"){}
            }.padding()
            
            
            
            HStack {
                TextField("Your List Name", text: $NameYourList)
                    .textFieldStyle(.roundedBorder)
            }.padding()
            Spacer()
            Text("Check Out")
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.gray.opacity(0.4))
            
            .edgesIgnoringSafeArea(.all)
//            .onTapGesture {
//                presentationMode.wrappedValue.dismiss()
//            }
            
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
                    NavigationLink(destination: CheckoutView()) {
                        Text("Place Order")
                    }
//                    Button("Place Order") {                 self.isPresented.toggle()
//
//                    }
//                    .sheet(isPresented: $isPresented, content: FullScreenViewModel.init)
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
