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
                HeaderView()
                if (profileClicked){
                    ProfileView()
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
