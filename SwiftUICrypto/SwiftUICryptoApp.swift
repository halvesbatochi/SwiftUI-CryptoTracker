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
    @State private var showLauchView: Bool = true
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationView {
                    HomeView()
                        .navigationBarHidden(true)
                }
                .navigationViewStyle(StackNavigationViewStyle())
                .environmentObject(vm)
                
                ZStack {
                    if showLauchView {
                        LaunchView(showLauchView: $showLauchView)
                            .transition(.move(edge: .leading))
                    }
                }
            }
        }
    }
}
