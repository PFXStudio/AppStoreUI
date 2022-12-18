//
//  SearchReducer.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import Foundation
import ComposableArchitecture

struct SearchReducer: ReducerProtocol {
    struct State: Equatable {
        var result: SearchResult
        var query: String
        var popupInfo: PopupInfo?
    }

    enum Action: Equatable {
        case changedQuery(String)
        case changeDebouncedQuery
        case responseResult(TaskResult<SearchResult>)
        case didTapAppInfo(AppInfo)
    }
    
    @Dependency(\.storeClient) var storeClient
    private enum RequestSearchID {}

    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case let .changedQuery(query):
            return changedQuery(into: &state, query: query)
        
        case .changeDebouncedQuery:
            return changeDebouncedQuery(into: &state)
        
        case let .responseResult(result):
            return responseResult(into: &state, result: result)
        
        case let .didTapAppInfo(appInfo):
            return didTapAppInfo(into: &state, appInfo: appInfo)
        }
    }
}

extension SearchReducer {
    private func changedQuery(into state: inout State, query: String) -> EffectTask<Action> {
        state.query = query
        return .cancel(id: RequestSearchID.self)
    }
    
    private func changeDebouncedQuery(into state: inout State) -> EffectTask<Action> {
        guard state.query.isEmpty == false else {
            state.result = SearchResult.empty
            return .none }
        return .task { [query = state.query] in
            await .responseResult(TaskResult {
                try await self.storeClient.requestSearch(query)
            })
        }
        .cancellable(id: RequestSearchID.self, cancelInFlight: true)
    }
    
    private func responseResult(into state: inout State, result: TaskResult<SearchResult>) -> EffectTask<Action> {
        switch result {
        case let .success(searchResult):
            state.result = searchResult
        
        case let .failure(error):
            print(">>> error \(error)")
            state.result = SearchResult.empty
            state.popupInfo = PopupInfo(title: "잘못된 요청입니다.", message: error.localizedDescription, buttonTitle: "확인")
        }
        return .none
    }
    
    private func didTapAppInfo(into state: inout State, appInfo: AppInfo) -> EffectTask<Action> {
        return .none
    }
}
