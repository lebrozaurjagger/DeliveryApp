//
//  ListCartView.swift
//  DeliveryApp
//
//  Created by Phillip on 14.02.2024.
//

import SwiftUI

struct ListCartView: View {
    @State var name = "TempItem"
    @State var price = "000.00"
    @State private var value = 1
    let step = 1
    let range = 1...99
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(1)
                Text(price)
                    .lineLimit(1)
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
            }
            Stepper(
                value: $value,
                in: range,
                step: step
            ) {
                Text("x \(value)")
            }
            .padding()
        }
    }
}


#Preview {
    ListCartView()
}
