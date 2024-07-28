//
//  BreedsListAllResult.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import Foundation

// MARK: - BreedsListAllResult
struct BreedsListAllResult: Decodable {
    let message: [String: [String]]
    let status: String
}

struct BreedsListResult {
    
    struct Item: Identifiable, Hashable {
        let id = UUID()
        let name: String
        let imagePath: String
    }
    
    var items: [Item]
}
