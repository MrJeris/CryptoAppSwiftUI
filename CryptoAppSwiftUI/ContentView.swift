//
//  ContentView.swift
//  CryptoAppSwiftUI
//
//  Created by Ruslan Magomedov on 25.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Text("Accent Color")
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
