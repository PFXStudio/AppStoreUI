//
//  MenuItem.swift
//  SUPlayground
//
//  Created by AsGuard on 6/16/24.
//

import Foundation

struct MenuItem: Identifiable {
    var id = NSUUID().uuidString    
    let imageName: String
    let type: String
    let restaurantName: String
}
