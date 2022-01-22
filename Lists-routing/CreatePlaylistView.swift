//
//  CreatePlaylistView.swift
//  Lists-routing
//
//  Created by Amjad Oudeh on 12.01.22.
//

import SwiftUI

struct CreatePlaylistView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var makeThisProfilePublic = false
    @State private var myPlayList = ""

    var body: some View {
        Text("Emily").padding().foregroundColor(.yellow)
    }
//     VStack {
//           HStack{
//                Button("Cancel"){
//                   presentationMode.wrappedValue.dismiss()
//               }
//                Spacer(minLength: 2)
//               Text("Create playlist")
//                   .font(.largeTitle)
//               Spacer(minLength: 20)
//              Button("save"){
//                   // TODO: implement the logic to save the new playlist
//                }
//          }
//            HStack{
//              TextField("Playlist title",
//                         text: $myPlayList)
//                    .buttonBorderShape(.automatic)
//            }
//           .padding()
//
//            HStack{
//               Toggle("Make this profile public",isOn:$makeThisProfilePublic )
//           }
//            .padding()
//           Spacer()
//       }

    


    struct CreatePlaylistView_Previews: PreviewProvider {
        static var previews: some View {
            CreatePlaylistView()
        }
    }
}

//import SwiftUI
//
//struct CreatPlaylistSheetView: View {
//    @Environment(\.presentationMode) var presentationMode
//    @State private var makeThisProfilePublic = false
//    @State private var myPlayList = ""
//
//    var body: some View {
//
//        VStack {
//            HStack{
//                Button("Cancel"){
//                    presentationMode.wrappedValue.dismiss()
//                }
//                Spacer(minLength: 2)
//                Text("Create playlist")
//                    .font(.largeTitle)
//                Spacer(minLength: 20)
//                Button("save"){
//                    // TODO: implement the logic to save the new playlist
//                }
//            }
//            HStack{
//                TextField("Playlist title",
//                          text: $myPlayList)
//
//            }
//            .padding()
//
//            HStack{
//                Toggle("Make this profile public",isOn:$makeThisProfilePublic )
//            }
//            .padding()
//            Spacer()
//        }
//
//    }
//}
//
//struct CreatePlaylistView_Previews: PreviewProvider {
//    static var previews: some View {
//        CreatPlaylistSheetView()
//    }
//}
//
