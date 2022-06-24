//
//  ContentView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
    
    @State var startOffset: CGFloat = screenHeight * 0.83
    @State var currentOffset: CGFloat = 0
    @State var endOffset: CGFloat = 0

    var body: some View {
        ZStack{
            HomeView()
            
            TabView()
                .offset(y:startOffset)
                .offset(y:currentOffset)
                .offset(y:endOffset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation(.spring()){
                                currentOffset = value.translation.height
                            }
                        })
                        .onEnded({ value in
                            withAnimation(.spring()){
                                if currentOffset < -150 {
                                    endOffset = -startOffset
                                    currentOffset = 0
                                } else if endOffset != 0 && currentOffset > 150 {
                                    endOffset = 0
                                    currentOffset = 0
                                } else {
                                    currentOffset = 0
                                }
                            }
                        })
                )
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
