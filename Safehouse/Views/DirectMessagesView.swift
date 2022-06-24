//
//  DirectMessagesView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct DirectMessagesView: View {
    var body: some View {
        VStack{
            DirectMessageView()
            DirectMessageView()
            DirectMessageView()
            DirectMessageView()
            Spacer()
        }
    }
}

struct DirectMessagesView_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessagesView()
    }
}
