//
//  OrderStatus.swift
//  DeliveryApp
//
//  Created by Phillip on 18.02.2024.
//

import SwiftUI

struct OrderStatus: View {
    @State var image = "xmark"
    @State var status = "Delivery Declined!"
    @State var description = "Please, try again in 5 minutes, or change your payment method"
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
                .ignoresSafeArea()
            VStack {
                Image(systemName: image)
                    .imageScale(.large)
                    .foregroundColor(.accent)
                    .font(.title)
                    .fontWeight(.black)
                    .padding()
                Text(status)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(description)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.title3)
            }
        }
    }
}

#Preview {
    OrderStatus()
}
