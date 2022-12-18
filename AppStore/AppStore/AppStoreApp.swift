//
//  AppStoreApp.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import SwiftUI
import ComposableArchitecture

@main
struct AppStoreApp: App {
    var body: some Scene {
        WindowGroup {
            SearchView(store:
                        Store(initialState:
                                SearchReducer.State(result: SearchResult.empty,
                                                    query: "",
                                                    popupInfo: nil),
                              reducer: SearchReducer()._printChanges())
            )
        }
    }
}
