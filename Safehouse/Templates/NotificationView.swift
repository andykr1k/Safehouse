//
//  NotificationView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(.white)
            HStack{
                ProfilePictureView(widthSize: 30, heightSize: 30)
                Spacer()
                Text("Posted a new push")
                    .bold()
                Spacer()
            }.padding()
        }.frame(width: 350, height: 50).padding()
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
