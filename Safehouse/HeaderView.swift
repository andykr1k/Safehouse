//
//  HeaderView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 100)
            .foregroundColor(.gray.opacity(0.3))
            HStack{
                VStack(alignment: .leading) {
                    Text("Today").font(.title2).bold()
                    Text("June 16th, 2022")
                }
                Spacer()
            }.padding()
            HStack{
                Spacer()
                ProfilePictureView(widthSize: 50, heightSize: 50)
            }.padding()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
