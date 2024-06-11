//
//  ScrollViewsModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/6/24.
//

import SwiftUI

struct ScrollViewsModule: View {
    let driverImages = [
        "team-1-800x800",
        "team-1-800x800",
        "team-1-800x800",
        "team-1-800x800",
        "team-1-800x800",
        "team-1-800x800",
        "team-1-800x800",
        "team-1-800x800",
        "team-1-800x800",
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(driverImages, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                }
            }
        }
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(0 ... 100, id:\.self) { index in
                    Text("hello \(index)")
                }
            }
        }
    }
}

#Preview {
    ScrollViewsModule()
}
