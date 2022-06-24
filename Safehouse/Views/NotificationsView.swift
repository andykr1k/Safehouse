//
//  NotificationsView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack{
            NotificationView()
            NotificationView()
            NotificationView()
            NotificationView()
            Spacer()
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
