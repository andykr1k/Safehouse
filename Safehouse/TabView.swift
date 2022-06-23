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
                            Image("house")
                            Spacer()
                            Image("circleGridSquare")
                            Spacer()
                            Image("search")
                            Spacer()
                            Image("bell")
                            Spacer()
                        }.padding()
                    }
                    Divider()
                    Spacer()
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
