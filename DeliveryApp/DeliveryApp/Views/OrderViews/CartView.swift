//
//  CartView.swift
//  DeliveryApp
//
//  Created by Phillip on 14.02.2024.
//

import SwiftUI

struct CartView: View {
    @State private var confirmButton = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ZStack {
                        HStack {
                            Button {
                                withAnimation {
                                    dismiss()
                                }
                            } label: {
                                Label("Back", systemImage: "chevron.left")
                            }
                            Spacer()
                            Button() {
                                withAnimation {
                                    confirmButton = true
                                }
                            } label: {
                                Label("", systemImage: "trash")
                            }
                            .confirmationDialog("Clear your cart?", isPresented: $confirmButton, titleVisibility: .visible) {
                                Button("Clear") {
                                    
//                                Code for clear cart
                                    
                                }
                            }
                        }
                        .padding()
                        Text("Cart")
                            .fontWeight(.bold)
                    }
                    List {
                        ForEach(1...4, id: \.self) { i in
                            ListCartView()
                        }
                    }
                    .listStyle(.plain)
                }
                VStack {
                    Spacer()
                    NavigationLink(destination: OrderStatus(image: "checkmark", status: "Delivery Success!", description: "Your order will be delivered in 30 minutes!")) {
                        Label("Proceed delivery, 000.00", systemImage: "chevron.right")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .background(
                        RoundedRectangle(cornerSize: CGSize(width: 30, height: 30))
                    )
                    .padding()
                }
            }
        }
    }
}

#Preview {
    CartView()
}
