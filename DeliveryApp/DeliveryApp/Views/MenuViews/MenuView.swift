//
//  MenuView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                NavigationLink(destination: CurrentLocationView()) {
                    Location()
                }
                .foregroundColor(.black)
                
                SearchBar()
                    .padding(.vertical)
                
                Image("Pattern")
                    .resizable()
                    .frame(height: 150)
                    .clipShape(.rect(cornerRadius: 15))
                    .foregroundColor(Color(.black))
                    .padding(.trailing, 4)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Top Categories")
                            .fontWeight(.bold)
                        Spacer()
                    }
                }
                .padding(.top)
                HStack {
                    NavigationLink(destination: Categories()) {
                        Categories(image: "Beverages", name: "Pizza")
                        Spacer()
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                    NavigationLink(destination: Categories()) {
                        Categories(image: "Seafood", name: "Burgers")
                        Spacer()
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                    NavigationLink(destination: Categories()) {
                        Categories(image: "Snack", name: "Drinks")
                        Spacer()
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                    NavigationLink(destination: Categories()) {
                        Categories(image: "Hug", name: "Desserts")
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                }
                
                HStack {
                    NavigationLink(destination: CurrentLocationView()) {
                        RestrauntsView(image: "Starbucks", name: "Starbucks", destination: "1.2 km", rate: "4.8")
                    }
                        .padding(.trailing, 6)
                        .foregroundColor(.black)
                    NavigationLink(destination: CurrentLocationView()) {
                        RestrauntsView(image: "Starbucks", name: "Starbucks", destination: "1.2 km", rate: "4.8")
                    }
                        .padding(.leading, 6)
                        .foregroundColor(.black)
                }
            }
            .padding()
        }
    }
}


#Preview {
    MenuView()
}
