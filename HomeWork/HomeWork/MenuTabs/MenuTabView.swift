//
//  MenuTabView.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import SwiftUI

struct MenuTabView: View {
    @State private var selectedTab = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(viewModel: HomeViewModel(service: AlamofireAPIService()))
                .tabItem {
                    VStack {
                        Image(systemName: MenuTabs.Home.image)
                        Text(MenuTabs.Home.title)
                    }
                }
                .tag(MenuTabs.Home)
            CartView()
                .tabItem {
                    VStack {
                        Image(systemName: MenuTabs.Cart.image)
                        Text(MenuTabs.Cart.title)
                    }
                }
                .tag(MenuTabs.Cart)
                .badge(10)
            LiveView()
                .tabItem {
                    VStack {
                        Image(systemName: MenuTabs.Live.image)
                        Text(MenuTabs.Live.title)
                    }
                }
                .tag(MenuTabs.Live)
                .badge("⦿")
            NotificationView()
                .tabItem {
                    VStack {
                        Image(systemName: MenuTabs.Notification.image)
                        Text(MenuTabs.Notification.title)
                    }
                }
                .tag(MenuTabs.Notification)
            SettingView()
                .tabItem {
                    VStack {
                        Image(systemName: MenuTabs.Setting.image)
                        Text(MenuTabs.Setting.title)
                    }
                }
                .tag(MenuTabs.Setting)
        }
    }
}

#Preview {
    MenuTabView()
}
