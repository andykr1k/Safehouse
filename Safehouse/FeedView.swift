//
//  FeedView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/24/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            MessageView(isPhotoPost: false)
            Divider()
            MessageView(isPhotoPost: true)
            Divider()
            MessageView(isPhotoPost: false)
            Divider()
            MessageView(isPhotoPost: false)
            Divider()
            MessageView(isPhotoPost: true)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
