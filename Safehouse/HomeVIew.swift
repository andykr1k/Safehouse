//
//  HomeView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct HomeView: View {
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
            }.background(Color.black.opacity(0.3)).edgesIgnoringSafeArea(.all)
            TabView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
