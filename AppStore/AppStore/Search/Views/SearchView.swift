//
//  SearchView.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import Foundation
import SwiftUI
import ComposableArchitecture

struct SearchView: View {
    let store: StoreOf<SearchReducer>
    let description: String = "AppStore Search"
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            NavigationView {
                VStack(alignment: .leading) {
                    Text(description).padding()
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("apple", text: viewStore.binding(get: \.query,
                                                                   send: SearchReducer.Action.changedQuery)
                        )
                        .textFieldStyle(.roundedBorder)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    }
                    .padding(.horizontal, 16)
                    
                    List {
                        ForEach(viewStore.result.results) { appInfo in
                            VStack(alignment: .leading) {
                                Button(action: { viewStore.send(.didTapAppInfo(appInfo)) }) {
                                    HStack {
                                        Text(appInfo.trackName ?? "")
                                    }
                                }
                            }
                        }
                    }
                }
            }
            .task(id: viewStore.query) {
                do {
                    try await Task.sleep(nanoseconds: NSEC_PER_SEC)
                    await viewStore.send(.changeDebouncedQuery).finish()
                } catch {}
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(store:
                    Store(initialState:
                            SearchReducer.State(result: SearchResult.empty,
                                                query: "",
                                                popupInfo: nil),
                          reducer: SearchReducer()._printChanges())
        )
    }
}
