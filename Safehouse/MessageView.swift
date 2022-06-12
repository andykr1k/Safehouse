//
//  MessageView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct MessageView: View {
    @State var isPhotoPost : Bool
    var body: some View {
        if (isPhotoPost){
            ZStack{
                VStack {
                    Image("testContent").resizable().frame(width: 350, height: 350).cornerRadius(10)
                    HStack{
                        Text("What is going on SAFEHOUSEEE!!!! First Post on this app baby.")
                            .font(.headline)
                            .fontWeight(.regular)
                        Image("testPic").resizable().frame(width: 50, height: 50)
                    }
                }
            }.padding()
                .background(.gray).cornerRadius(10)
        } else {
            ZStack{
                HStack{
                    Text("What is going on SAFEHOUSEEE!!!! First Post on this app baby.")
                        .font(.headline)
                        .fontWeight(.regular)
                    Image("testPic").resizable().frame(width: 50, height: 50)
                }
            }.padding()
                .background(.gray).cornerRadius(10)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(isPhotoPost: true)
    }
}
