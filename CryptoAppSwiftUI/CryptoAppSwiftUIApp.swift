//
//  CryptoAppSwiftUIApp.swift
//  CryptoAppSwiftUI
//
//  Created by Ruslan Magomedov on 25.08.2023.
//

import SwiftUI

@main
struct CryptoAppSwiftUIApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
