import SwiftUI

struct ItemDetails: View {
    // watch the object and if there is any changes then refresh the view
    @EnvironmentObject var order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottomTrailing){
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                // to be allowed to setch and resacle the image and the text
                Text("Photo:\(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                // just to make it not on the border
                    .offset(x:-5, y:-5)
            }
            Text(item.description)
                .padding()
            Button("Order This") {
                order.add(item: item)
            }.font(.headline)
            Spacer()
        }
        
        .navigationTitle(item.name)
        // to make the title Smaller because it's not the main Page
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ItemDetails(item: MenuItem.example)
            // adding the example to keep the EnvironmentObject happy and avoid the risk or any fell or crash
                .environmentObject(Order())
        }
    }
}
