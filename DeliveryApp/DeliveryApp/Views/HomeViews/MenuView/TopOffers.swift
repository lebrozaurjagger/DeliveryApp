//
//  TopOffers.swift
//  DeliveryApp
//
//  Created by Phillip on 06.02.2024.
//

import SwiftUI

struct TopOffers: View {
    @State var image = "image"
    @State var name = "TempName"
    @State var destination = "1.0 km"
    @State var rate = "5.0"
    
    var body: some View {
            HStack {
                    VStack(alignment: .leading) {
                        Image(image)
                            .resizable()
                            .frame(height: 120)
                            .clipShape(.rect(cornerRadius: 15))
                        Text(name)
                            .font(.subheadline)
                            .fontWeight(.bold)
                        HStack {
                            Text(destination)
                                .font(.subheadline)
                                .foregroundColor(Color(.systemGray))
                            Spacer()
                            Image(systemName: "star.fill")
                                .font(.subheadline)
                                .foregroundColor(Color(.systemYellow))
                                .fontWeight(.bold)
                            Text(rate)
                                .font(.subheadline)
                                .foregroundColor(Color(.systemGray))
                        }
            }
        }
    }
}

#Preview {
    TopOffers()
}
