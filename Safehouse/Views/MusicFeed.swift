//
//  MusicFeed.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 7/20/22.
//

import SwiftUI

struct MusicFeed: View {
    var body: some View {
        VStack{
            HStack{
                Image("frank").resizable().frame(width: UIScreen.main.bounds.width * 0.55, height: 200)
                Image("ACDC").resizable().frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
            }.frame(width: UIScreen.main.bounds.width, height: 200)
            HStack{
                Image("akon").resizable().frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
                Image("beatles").resizable().frame(width: UIScreen.main.bounds.width * 0.55, height: 200)
            }.frame(width: UIScreen.main.bounds.width, height: 200)
            HStack{
                Image("katy").resizable().frame(width: UIScreen.main.bounds.width * 0.55, height: 200)
                Image("fireflies").resizable().frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
            }.frame(width: UIScreen.main.bounds.width, height: 200)
            HStack{
                Image("frank").resizable().frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
                Image("akon").resizable().frame(width: UIScreen.main.bounds.width * 0.55, height: 200)
            }.frame(width: UIScreen.main.bounds.width, height: 200)
            HStack{
                Image("beatles").resizable().frame(width: UIScreen.main.bounds.width * 0.55, height: 200)
                Image("ACDC").resizable().frame(width: UIScreen.main.bounds.width * 0.45, height: 200)
            }.frame(width: UIScreen.main.bounds.width, height: 200)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct MusicFeed_Previews: PreviewProvider {
    static var previews: some View {
        MusicFeed()
    }
}
