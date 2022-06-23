//
//  ContentView.swift
//  Safehouse
//
//  Created by Andrew Krikorian on 6/12/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var Home: Bool = true;
    @State var Search: Bool = false;
    @State var Messages: Bool = false;
    @State var Profile: Bool = false;
    var body: some View {
        HomeView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
