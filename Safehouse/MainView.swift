//
//  MainView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct MainView: View {
    @State var loggedIn: Bool = false
    var body: some View {
        if ( loggedIn ){
            ContentView()
        } else {
            ZStack{
                SignUpView()
                Button{
                    loggedIn.toggle()
                } label: {
                    ZStack {
                        Capsule()
                            .foregroundColor(.gray)
                            .opacity(0.2)
                        Text("Sign In")
                            .bold()
                            .foregroundColor(.white)
                    }
                }.frame(width: 350, height: 50)
                    .offset(y: 200)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
