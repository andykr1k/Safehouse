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
                    HStack{
                        ProfilePictureView(widthSize: 50, heightSize: 50)
                        Divider()
                            .frame(width: 5, height: 50)
                        VStack(alignment: .leading){
                            Text("@andykr1k")
                                .font(.callout)
                                .fontWeight(.bold)

                            Text("What is going on SAFEHOUSEEE!!!! First Post on this app baby.")
                                .font(.headline)
                                .fontWeight(.regular)
                            }
                    }
                    Image("testContent").resizable()
                        .frame(width: 350, height: 350)
                        .cornerRadius(10)
                }
            }   .padding()
        } else {
            ZStack{
                HStack{
                    ProfilePictureView(widthSize: 50, heightSize: 50)
                    Divider()
                        .frame(width: 5, height: 50)
                    VStack(alignment: .leading){
                        Text("@andykr1k")
                            .font(.callout)
                            .fontWeight(.bold)

                        Text("What is going on SAFEHOUSEEE!!!! First Post on this app baby.")
                            .font(.headline)
                            .fontWeight(.regular)
                    }
                }
            }   .padding()
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(isPhotoPost: true)
    }
}
