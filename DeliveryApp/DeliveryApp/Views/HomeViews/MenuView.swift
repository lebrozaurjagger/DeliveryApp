//
//  MenuView.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct MenuView: View {
    @State private var showSheet = false
    
    var body: some View {
        NavigationView {
            List {
                ScrollView {
                    VStack(alignment: .leading) {
                        NavigationLink(destination: CurrentLocationView()) {
                            Location()
                        }
                        .foregroundColor(.black)
                        
                        SearchBar()
                            .padding(.vertical)
                        
                        HStack {
                            NavigationLink(destination: RestrauntView(restraunt: "Reed St.", restrauntImage: "Starbucks", description: "Description")) {
                                TopOffers(image: "Starbucks", name: "Reed St.", destination: "1.2 km", rate: "4.8")
                                .foregroundColor(Color(.black))
                                .padding(.trailing, 4)
                            }
                            NavigationLink(destination: RestrauntView(restraunt: "Greenwich St.", restrauntImage: "Baegopa", description: "Description")) {
                                TopOffers(image: "Baegopa", name: "Greenwich St.", destination: "500 m", rate: "4.6")
                                .foregroundColor(Color(.black))
                                .padding(.leading, 4)
                            }
                        }
                        
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
                    }
                    HStack() {
                        Text("Menu")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                }
                
                ForEach(1...3, id: \.self) { i in
                    NavigationLink(destination: ItemView()) {
                        ListItemView(image: "Pattern", name: "Cheeze Pizza", calories: "128 kcal")
                    }
                }
            }
            .listStyle(.plain)
        }
    }
}


#Preview {
    MenuView()
}
