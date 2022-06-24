//
//  MessagesView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/23/22.
//

import SwiftUI

struct MessagesView: View {
    @State private var messages: Bool = false;
    @State private var notifs: Bool = false;
    var body: some View {
        VStack {
            ZStack{
                HStack{
                    if (messages){
                        Text("Messages")
                            .bold()
                    } else {
                        Button("Messages"){
                            messages = true
                            notifs = false
                        }.foregroundColor(.black)
                    }
                    Divider().frame(height: 10)
                    if (notifs){
                        Text("Notifications")
                            .bold()
                    } else {
                        Button("Notifications"){
                            notifs = true
                            messages = false
                        }.foregroundColor(.black)
                    }
                }.padding()
            }
            if (notifs){
                NotificationsView()
            }
            if (messages){
                DirectMessagesView()
            }
            Spacer()
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
