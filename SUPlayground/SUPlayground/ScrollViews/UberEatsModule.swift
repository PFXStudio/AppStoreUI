//
//  UberEatsModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/6/24.
//

import SwiftUI

struct UberEatsModule: View {
    let foodImages = [
        "1655284674592",
        "1680763511600",
        "1712028381366",
        "1715674674872",
        "1717468635529",
        "1717468810071",
    ]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(foodImages, id:\.self) { foodImage in
                        VStack(alignment: .leading, spacing: 12) {
                            Image(foodImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 360, height: 150)
                                .cornerRadius(10)
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Macdonald")
                                    .fontWeight(.semibold)
                                Text("$0.99 Delivery Fee | 15 ~ 30 min")
                                    .foregroundColor(.gray)
                            }
                            .font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    UberEatsModule()
}
