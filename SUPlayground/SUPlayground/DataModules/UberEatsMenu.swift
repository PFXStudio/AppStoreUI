//
//  UberEatsMenu.swift
//  SUPlayground
//
//  Created by AsGuard on 6/16/24.
//

import SwiftUI

struct UberEatsMenu: View {
    let foodImages = [
        "",
        "",
        "",
        "",
        "",
        "",
    ]
    
    let menuItems: [MenuItem] = [
        MenuItem(imageName: "1655284674592", type: "korean", restaurantName: "bugger"),
        MenuItem(imageName: "1680763511600", type: "japan", restaurantName: "ham"),
        MenuItem(imageName: "1712028381366", type: "italian", restaurantName: "jjigae"),
        MenuItem(imageName: "1715674674872", type: "american", restaurantName: "kimchi"),
        MenuItem(imageName: "1717468635529", type: "korean", restaurantName: "macdonald"),
        MenuItem(imageName: "1717468810071", type: "china", restaurantName: "buggerking"),
    ]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Featured on Uber Eats")
                .font(.title2)
                .fontWeight(.semibold)
                .padding()
            ScrollView {
                VStack(spacing: 24) {
                    ForEach(menuItems) { menuItem in
                        MenuItemView(model: menuItem)
                    }
                }
            }
        }
    }
}

struct ExtractedView: View {
    let model: MenuItem
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(model.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 4) {
                Text(model.restaurantName)
                    .fontWeight(.semibold)
                Text("$0.99 Delivery Fee | 15 ~ 30 min")
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
        }

    }
}


#Preview {
    UberEatsMenu()
}

