//
//  MessagesView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/23/22.
//

import SwiftUI

struct MessagesView: View {
    @State private var messages: Bool = true;
    @State private var notifs: Bool = false;
    var body: some View {
        VStack {
            ZStack{
                HStack{
                    if (messages){
                        Text("Messages")
                            .bold().foregroundColor(.white)
                    } else {
                        Button("Messages"){
                            messages = true
                            notifs = false
                        }.foregroundColor(.white)
                    }
                    Divider().frame(height: 10)
                    if (notifs){
                        Text("Notifications")
                            .bold().foregroundColor(.white)
                    } else {
                        Button("Notifications"){
                            notifs = true
                            messages = false
                        }.foregroundColor(.white)
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
