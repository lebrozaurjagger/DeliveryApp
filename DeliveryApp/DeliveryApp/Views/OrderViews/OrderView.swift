//
//  OrderView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct OrderView: View {
    @State private var showSheet = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1...10, id: \.self) { i in
                    NavigationLink(destination: ItemView()) {
                        ListItemView(image: "Pattern", name: "Cheeze Pizza", calories: "128 kcal")
                    }
                }
                .navigationTitle("Menu")
                .sheet(isPresented: $showSheet) {
                    CartView()
                }
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        withAnimation {
                            showSheet.toggle()
                        }
                    } label: {
                        Label("Cart", systemImage: "cart.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    OrderView()
}
