//
//  ListItemView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct ListItemView: View {
    @State var image = "Pattern"
    @State var name = "TempName"
    @State var calories = "100 kcal"
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .cornerRadius(10)
                .frame(width: 100, height: 100, alignment: .center)
                .padding(.vertical, 8)
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(1)
                Text(calories)
                    .lineLimit(1)
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
                HStack {
                    Image(systemName: "star.fill")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemYellow))
                        .fontWeight(.bold)
                    Text("4.8")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray))
                }
            }
        }
    }
}

#Preview {
    ListItemView()
}
