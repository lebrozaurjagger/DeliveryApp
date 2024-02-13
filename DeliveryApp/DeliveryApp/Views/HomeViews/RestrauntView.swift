//
//  RestrauntView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct RestrauntView: View {
    @State var restraunt = "TempRestraunt"
    @State var restrauntImage = "Pattern"
    @State var description = "TempDescription"
    
    var body: some View {
        NavigationView {
            VStack() {
                Image(restrauntImage)
                    .resizable()
                    .cornerRadius(10)
                    .frame(height: 200)
                    .padding()
                Text(description)
                    .font(.title3)
                
                Spacer()
                Button {
                    withAnimation {
                        
                    }
                } label: {
                    Label("Open in Maps", systemImage: "")
                }
            }
            .navigationTitle(restraunt)
        }
    }
}

#Preview {
    RestrauntView()
}
