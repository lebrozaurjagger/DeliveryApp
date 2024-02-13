//
//  SearchBar.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct SearchBar: View {
    @State private var searchBar = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 50)
                .cornerRadius(25)
                .foregroundColor(Color(.systemBackground))
                .shadow(color: .secondary, radius: 1)
            HStack {
                Image(systemName: "magnifyingglass")
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemGray2))
                TextField("Search menu, restraunts, or etc", text: $searchBar)
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
                Spacer()
                Image(systemName: "slider.horizontal.3")
                    .fontWeight(.bold)
                    .foregroundColor(Color(.systemGray2))
            }
            .padding()
        }
        .padding(1)
    }
}

#Preview {
    SearchBar()
}
