//
//  ProfileView.swift
//  DeliveryApp
//
//  Created by Phillip on 14.02.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var showSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                User()
                    .padding()
                
                List {
                    ForEach(1...2, id: \.self) { i in
                        Text("4209 **** **** ****")
                    }
                    .sheet(isPresented: $showSheet) {
                        NewCardView()
                    }
                    
                    Button {
                        withAnimation {
                            showSheet.toggle()
                        }
                    } label: {
                        Label("Add new bank card", systemImage: "creditcard.fill")
                            .fontWeight(.bold)
                            .padding(.vertical)
                    }
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
