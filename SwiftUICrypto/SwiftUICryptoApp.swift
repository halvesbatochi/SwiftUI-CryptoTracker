//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by Henrique Alves Batochi on 19/07/25.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    
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
