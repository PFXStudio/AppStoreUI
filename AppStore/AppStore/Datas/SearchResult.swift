//
//  SearchResult.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import Foundation

struct SearchResult: Decodable, Equatable, Sendable {
    let resultCount: Double
    let results: [AppInfo]
    
    static let empty = SearchResult(resultCount: 0, results: [])
}
