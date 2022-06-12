//
//  ProfilePictureView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct ProfilePictureView: View {
    @State var widthSize : CGFloat
    @State var heightSize : CGFloat
    var body: some View {
        ZStack{
            Image("testProfile")
                .resizable()
                .clipShape(Circle())
            Circle()
                .stroke(.black, lineWidth: 1)
                .opacity(0.5)
        }.frame(width: widthSize, height: heightSize)
    }
}

struct ProfilePictureView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePictureView(widthSize: 100, heightSize: 100)
    }
}
