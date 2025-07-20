//
//  HomeView.swift
//  SwiftUICrypto
//
//  Created by Henrique Alves Batochi on 19/07/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortifolio: Bool = false
    
    var body: some View {
        ZStack {
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                homeHeader
                
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    NavigationView {
        HomeView()
            .navigationBarHidden(true)
    }
}

extension HomeView {
    
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortifolio ? "plus" : "info")
                .animation(.none, value: showPortifolio)
                .background(
                    CircleButtonAnimationView(animate: $showPortifolio)
                )
            Spacer()
            Text(showPortifolio ? "Portifolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none, value: showPortifolio)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortifolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortifolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
