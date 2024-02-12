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
                NavigationLink(destination: SearchBar()) {
                    Location()
                }
                .foregroundColor(.black)
                
                NavigationLink(destination: Location()) {
                    SearchBar()
                }
                .padding(.vertical)
                
                NavigationLink(destination: Location()) {
                    DailyOffer()
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Top Categories")
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink(destination: Location()) {
                            Text("See all")
                                .font(.subheadline)
                                .foregroundColor(Color(.systemGray2))
                                .fontWeight(.bold)
                        }
                    }
                }
                .padding(.top)
                
                HStack {
                    NavigationLink(destination: Location()) {
                        Categories(image: "Beverages", name: "Beverages")
                        Spacer()
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                    NavigationLink(destination: Location()) {
                        Categories(image: "Seafood", name: "Seafood")
                        Spacer()
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                    NavigationLink(destination: Location()) {
                        Categories(image: "Snack", name: "Snack")
                        Spacer()
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                    NavigationLink(destination: Location()) {
                        Categories(image: "Hug", name: "Hug")
                    }
                    .foregroundColor(Color(.black))
                    .padding(.bottom)
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Top Places")
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink(destination: Location()) {
                            Text("See all")
                                .font(.subheadline)
                                .foregroundColor(Color(.systemGray2))
                                .fontWeight(.bold)
                        }
                    }
                    
                    HStack {
                        NavigationLink(destination: Location()) {
                            TopOffers(
                                image: "Starbucks",
                                name: "Starbucks Borobodur",
                                destination: "1.2 km",
                                rate: "4.8"
                            )
                            .foregroundColor(Color(.black))
                        }
                        
                        NavigationLink(destination: Location()) {
                            TopOffers(
                                image: "Baegopa",
                                name: "Baegopa Suhat",
                                destination: "500 m",
                                rate: "4.6"
                            )
                            .foregroundColor(Color(.black))
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    MenuView()
}
