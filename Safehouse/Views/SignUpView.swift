//
//  SignUpView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.2)
                .rotationEffect(.degrees(45))
                .offset(x: -30, y: -350)
            
            VStack(spacing: 20){
                HStack {
                    Text("Welcome")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()
                }.offset(y: -100)
                HStack {
                    Text("Safehouse")
                        .font(.title2)
                        .foregroundColor(Color.gray)
                        .opacity(0.3)
                    Spacer()
                }.offset(y: -110)
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                Rectangle()
                    .foregroundColor(.white)
                    .frame(height: 1)
                
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty){
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                    }
                Rectangle()
                    .foregroundColor(.white)
                    .frame(height: 1)
                
            }.frame(width: 350)
            
        }.background(Color.black)
        .ignoresSafeArea()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
