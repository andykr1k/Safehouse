//
//  ProfileView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            ZStack{
                ProfilePictureView(widthSize: 200, heightSize: 200)

                Text("Tap to edit")
                    .offset(y:50)
                    .blinking(duration: 0.8)
            }
            Text("@andykr1k")
                .bold()
            Spacer()
        }.padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


struct BlinkViewModifier: ViewModifier {
    
    let duration: Double
    @State private var blinking: Bool = false
    
    func body(content: Content) -> some View {
        content
            .opacity(blinking ? 0 : 1)
            .animation(.easeOut(duration: duration).repeatForever())
            .onAppear {
                withAnimation {
                    blinking = true
                }
            }
    }
}

extension View {
    func blinking(duration: Double = 0.75) -> some View {
        modifier(BlinkViewModifier(duration: duration))
    }
}
