//
//  BindingModule.swift
//  SUPlayground
//
//  Created by AsGuard on 6/18/24.
//

import SwiftUI

struct BindingModule: View {
    @State var isOn = false
    @State var isBattery = false
    var body: some View {
        SettingRowView(imageName: "bell.circle.fill", title: "Notifications", isOn: $isOn)
        SettingRowView(imageName: "battery.100.circle.fill", title: "Battery", isOn: $isBattery)
    }
}

struct SettingRowView: View {
    let imageName: String
    let title: String
    @Binding var isOn: Bool
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                HStack {
                    Image(systemName: imageName)
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.blue)
                    Text(title)
                        .font(.subheadline)
                }
            })
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            .padding(.horizontal)
        }
    }
}

#Preview {
    BindingModule()
}
