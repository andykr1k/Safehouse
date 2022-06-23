//
//  SearchView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/23/22.
//

import SwiftUI

struct SearchView: View {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    var body: some View {
        VStack {
            ZStack{
                Capsule()
                    .frame(height: 50)
                    .opacity(0.2)
                HStack {
                    Image("search")
                    Spacer()
                }.padding()
            }
            Spacer()
        }.padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
