//
//  HomeView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct HomeView: View {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    @State var profileClicked: Bool = false
    var body: some View {
        ZStack{
            VStack{
                ZStack {
                    HeaderView()
                    HStack {
                        Spacer()
                        Button {
                            profileClicked.toggle()
                        } label: {
                            ProfilePictureView(widthSize: 50, heightSize: 50)
                        }
                    }.padding().padding()
                }

                if (profileClicked){
                    ZStack {
                        ProfileView()
                        VStack {
                            HStack {
                                Spacer()
                                Button {
                                    profileClicked = false
                                } label: {
                                    Image("xmark")
                                        .foregroundColor(.black)
                                }
                            }.padding().padding()
                            Spacer()
                        }
                    }
                } else {
                    FeedView()
                }
            }.background(Color.black.opacity(0.1)).edgesIgnoringSafeArea(.all)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
