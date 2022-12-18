//
//  Test.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import Foundation
import ComposableArchitecture
import XCTestDynamicOverlay

extension SearchResult {
    static let mock = SearchResult(resultCount: 0, results: [])
}

extension StoreClient: TestDependencyKey {
    static var previewValue: StoreClient = Self(requestSearch: { _ in .mock })
    static var testValue: StoreClient = Self(requestSearch: unimplemented("\(Self.self).requestSearch"))
}
