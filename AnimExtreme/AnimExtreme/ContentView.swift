//
//  ContentView.swift
//  AnimExtreme
//
//  Created by Giovanni Madalozzo on 29/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBar(viewRouter: ViewRouter())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
