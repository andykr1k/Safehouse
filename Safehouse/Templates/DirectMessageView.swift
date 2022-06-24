//
//  DirectMessageView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct DirectMessageView: View {
    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(.gray)
            HStack{
                ProfilePictureView(widthSize: 30, heightSize: 30)
                Spacer()
                Text("Whats goin on man? Long time no see...I have a great business idea")
                    .font(.subheadline)
                    .lineLimit(2)
                Spacer()
            }.padding()
        }.frame(width: 350, height: 50).padding()
    }
}

struct DirectMessageView_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessageView()
    }
}
