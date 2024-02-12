//
//  Location.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct Location: View {
    var body: some View {
        HStack() {
            ZStack {
                Image(systemName: "person.fill")
                    .foregroundColor(Color(.systemGray2))
                Rectangle()
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)
                    .foregroundColor(Color(.systemFill))
                    .shadow(radius: 10)
            }
            VStack(alignment: .leading) {
                Text("Current location")
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
                Text("Washington Blvd, 1560")
                    .fontWeight(.bold)
            }
            .padding(8)
            Spacer()
            Image(systemName: "chevron.down")
                .foregroundColor(Color(.systemGray))
                .fontWeight(.bold)
        }
    }
}

#Preview {
    Location()
}
