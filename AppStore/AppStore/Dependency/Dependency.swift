//
//  Dependency.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import Foundation
import ComposableArchitecture

extension DependencyValues {
    var storeClient: StoreClient {
        get { self[StoreClient.self] }
        set { self[StoreClient.self] = newValue }
    }
}
