//
//  Categories.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct Categories: View {
    @State var image = "image"
    @State var name = "TempName"
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Image(image)
                        .resizable()
                        .frame(width: 70, height: 70)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                    Text(name)
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

#Preview {
    Categories()
}
