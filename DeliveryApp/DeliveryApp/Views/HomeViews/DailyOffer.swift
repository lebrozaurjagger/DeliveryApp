//
//  DailyOffer.swift
//  DeliveryApp
//
//  Created by Phillip on 13.02.2024.
//

import SwiftUI

struct DailyOffer: View {
    var body: some View {
        ZStack {
            Image("Pattern")
                .resizable()
                .frame(height: 140)
                .clipShape(.rect(cornerRadius: 15))
        }
    }
}

#Preview {
    DailyOffer()
}
