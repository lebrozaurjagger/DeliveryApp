//
//  ItemView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct ItemView: View {
    @State var image = "Pattern"
    @State var name = "TempName"
    @State var description = "TempDescription"
    @State var calories = "100 kcal"
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .frame(width: 300, height: 300)
                .padding()
            
            Text(name)
                .font(.title)
                .fontWeight(.bold)
            
            Text(description)
                .font(.title2)
                .padding(4)
            
            Text(calories)
                .lineLimit(1)
                .font(.subheadline)
                .foregroundColor(Color(.systemGray))
            
            Spacer()
            
            Button {
                withAnimation {
                    
                }
            } label: {
                Label("Add to cart", systemImage: "")
                    .fontWeight(.bold)
            }
        }
    }
}

#Preview {
    ItemView()
}
