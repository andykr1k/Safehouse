//
//  TabView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        VStack{
            Spacer()
            ZStack{
                Capsule()
                    .frame(height: 75)
                    .foregroundColor(.gray)
                Group{
                    HStack{
                        Spacer()
                        Image("house")
                        Spacer()
                        Image("search")
                        Spacer()

                        Image("bell")
                        Spacer()
                        ProfilePictureView(widthSize: 30, heightSize: 30)
                        Spacer()
                    }
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
