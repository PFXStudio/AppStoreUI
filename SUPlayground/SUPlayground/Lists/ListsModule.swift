//
//  ListsModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/7/24.
//

import SwiftUI

struct ListsModule: View {
    @State var drivers: [String] = [
        "Lewis Hamilton",
        "Paul Hamilton",
        "Kevin Hamilton",
        "Rain Hamilton",
        "Max Hamilton",
        "Kakao Hamilton",
        "Bank Hamilton",
    ]

    let foodImages = [
        "1655284674592",
        "1680763511600",
        "1712028381366",
        "1715674674872",
        "1717468635529",
        "1717468810071",
    ]

    var body: some View {
        List {
            Section("Drivers") {
                ForEach(drivers, id:\.self) { driver in
                    Text(driver)
                }
                .onDelete(perform: { indexSet in
                    self.drivers.remove(atOffsets: indexSet)
                })
            }
            Section("Foods") {
                ForEach(foodImages, id: \.self) { foodImage in
                    Image(foodImage)
                        .resizable()
                        .frame(width: 300, height: 200)
                }
            }
        }
        // TODO: rain.b 안 되는데??
//        .listStyle(SidebarListStyle())
        .listStyle(.inset)
    }
}

#Preview {
    ListsModule()
}
