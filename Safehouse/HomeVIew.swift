//
//  HomeView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct HomeView: View {
    @State private var Home: Bool = false
    @State private var offset = CGSize.zero

    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    var body: some View {
        ZStack{
            VStack{
                HeaderView()
                ScrollView{
                    MessageView(isPhotoPost: false)
                    Divider()
                    MessageView(isPhotoPost: true)
                    Divider()
                    MessageView(isPhotoPost: false)
                    Divider()
                    MessageView(isPhotoPost: false)
                    Divider()
                    MessageView(isPhotoPost: true)
                }
            }.background(Color.black.opacity(0.1)).edgesIgnoringSafeArea(.all)
            if ( Home ){
                TabView()
                    .offset(y: HomeView.screenHeight - 150)
            } else {
                TabView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
