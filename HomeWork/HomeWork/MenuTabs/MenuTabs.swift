//
//  MenuTabs.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import Foundation

enum MenuTabs: CaseIterable, Hashable {
    case Home, Cart, Live, Notification, Setting
    var title: String {
        switch self {
        case .Home:
            "Home"
        case .Cart:
            "Cart"
        case .Live:
            "Live"
        case .Notification:
            "Notification"
        case .Setting:
            "Setting"
        }
    }
    
    var image: String {
        switch self {
        case .Home:
            "house.fill"
        case .Cart:
            "cart.fill"
        case .Live:
            "play.tv.fill"
        case .Notification:
            "bell.fill"
        case .Setting:
            "gearshape.2.fill"
        }
    }
    
    var tag: Int {
        switch self {
        case .Home:
            1
        case .Cart:
            2
        case .Live:
            3
        case .Notification:
            4
        case .Setting:
            5
        }
    }
}
