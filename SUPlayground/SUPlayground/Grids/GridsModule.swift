//
//  GridsModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/7/24.
//

import SwiftUI

struct GridsModule: View {
    
    let columns: [GridItem] = [
//        .init(.fixed(20)),
//        .init(.fixed(40)),
//        .init(.fixed(60)),
//        .init(.adaptive(minimum: 100, maximum: 100)),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible()),
    ]
    
    let foodImages = [
        "1655284674592",
        "1680763511600",
        "1712028381366",
        "1715674674872",
        "1717468635529",
        "1717468810071",
    ]

    let dimension = UIScreen.main.bounds.size.width / 3
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 1, content: {
                ForEach(foodImages, id: \.self) { foodImage in
                    Image(foodImage).resizable()
                        .scaledToFill()
                        .clipShape(Rectangle())
//                    Rectangle()
//                    .frame(height: dimension)
                }
            })
            .padding(.horizontal, 10)
        }
    }
}

#Preview {
    GridsModule()
}
