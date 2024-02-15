//
//  User.swift
//  DeliveryApp
//
//  Created by Phillip on 14.02.2024.
//

import SwiftUI

struct User: View {
    var body: some View {
        HStack() {
            ZStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(.systemGray2))
                Circle()
                    .frame(width: 100)
                    .foregroundColor(Color(.systemFill))
                    .shadow(radius: 10)
            }
            VStack(alignment: .leading) {
                Text("John Doe")
                    .font(.title)
                    .fontWeight(.bold)
                Text("+ 1 (999) 123 45-67")
                    .foregroundColor(Color(.systemGray))
            }
            .padding(8)
            Spacer()
        }
    }
}

#Preview {
    User()
}
