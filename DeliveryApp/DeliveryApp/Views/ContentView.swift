//
//  ContentView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MenuView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MenuView()
                .tabItem {
                    Label("Order", systemImage: "list.bullet.clipboard")
                }
            MenuView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
