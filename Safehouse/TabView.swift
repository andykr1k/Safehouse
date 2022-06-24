//
//  TabView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct TabView: View {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    @State var Home: Bool = true;
    @State var Search: Bool = false;
    @State var Messages: Bool = false;
    @State var Explore: Bool = false;
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .cornerRadius(30)
                    .foregroundColor(.gray)
                    .frame(height: TabView.screenHeight - 100)
                    .offset(y: 50)
                    VStack {
                        Group{
                            HStack{
                                Spacer()
                                Button {
                                    Home = false;
                                    Search = false;
                                    Messages = false;
                                    Explore = true;
                                } label: {
                                    if ( Explore ){
                                        ZStack {
                                            Image("circleGridSquare")
                                                .foregroundColor(.red)
                                        }
                                    } else {
                                        Image("circleGridSquare")
                                            .foregroundColor(.black)
                                    }
                                }
                                Spacer()
                                Button {
                                    Home = false;
                                    Search = true;
                                    Messages = false;
                                    Explore = false;
                                } label: {
                                    if ( Search ){
                                        ZStack {
                                            Image("search")
                                                .foregroundColor(.red)
                                        }
                                    } else {
                                        Image("search")
                                            .foregroundColor(.black)
                                    }
                                }
                                Spacer()
                                Button {
                                    Home = false;
                                    Search = false;
                                    Messages = true;
                                    Explore = false;
                                } label: {
                                    if ( Messages ){
                                        ZStack {
                                            Image("bell")
                                                .foregroundColor(.red)
                                        }
                                    } else {
                                        Image("bell")
                                            .foregroundColor(.black)
                                    }
                                }
                                Spacer()
                            }.padding()
                        }
                        Divider()
                        if (Search){
                            SearchView()
                        }
                        if (Messages){
                            MessagesView()
                        }
                        if(Explore){
                            ExploreView()
                        }
                        if (Home){
                            Spacer()
                        }
                    }.frame(height: TabView.screenHeight - 100).offset(y: 50)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}

