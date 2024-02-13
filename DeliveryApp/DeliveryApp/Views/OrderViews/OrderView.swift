//
//  OrderView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        TabView{
            NavigationView {
                VStack {
                    List {
                        ForEach(1...5, id: \.self) { i in
                            ListItemView(image: "Pattern", name: "Cheeze Pizza", calories: "128 kcal")
                        }
                    }
                    .listStyle(.plain)
                    
                    
                    Button {
                        withAnimation {
                            
                        }
                    } label: {
                        Label("Proceed delivery", systemImage: "")
                            .fontWeight(.bold)
                    }
                    .padding()
                }
                .navigationTitle("Delivery")
            }
        }
    }
}

#Preview {
    OrderView()
}
