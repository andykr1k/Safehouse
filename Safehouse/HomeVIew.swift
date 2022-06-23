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
    @State var Home: Bool = true;
    @State var Search: Bool = false;
    @State var Messages: Bool = false;
    @State var Profile: Bool = false;
    @State var tab: Bool = true;
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
            if ( tab ) {
                TabView()
            } else {
                TabView().offset(y: HomeView.screenHeight - 150)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
