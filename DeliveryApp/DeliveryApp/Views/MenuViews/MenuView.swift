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
            List {
                ScrollView {
                    VStack(alignment: .leading) {
                        NavigationLink(destination: CurrentLocationView()) {
                            Location()
                        }
                        .foregroundColor(.black)
                        
                        SearchBar()
                            .padding(.vertical)
                        
                        Image("Starbucks")
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
