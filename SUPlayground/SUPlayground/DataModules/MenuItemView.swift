//
//  MenuItemView.swift
//  SUPlayground
//
//  Created by AsGuard on 6/16/24.
//

import SwiftUI

struct MenuItemView: View {
    let model: MenuItem
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(model.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 360, height: 150)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text(model.restaurantName)
                    .fontWeight(.semibold)
                Text(model.type)
                    .foregroundColor(.gray)
                Text("$0.99 Delivery Fee | 15 ~ 30 min")
                    .foregroundColor(.gray)
            }
            .font(.subheadline)
        }

    }
}

#Preview {
    MenuItemView(model: .init(imageName: "", type: "", restaurantName: ""))
}
