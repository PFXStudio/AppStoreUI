//
//  StepReducer.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/24.
//

import Foundation
import ComposableArchitecture

struct StepReducer: ReducerProtocol {
    typealias State = StepState
    typealias Action = StepAction
    func reduce(into state: inout State, action: Action) -> EffectTask<Action> {
        switch action {
        case .didTapPlus:
            state.count = state.count + 1
        case .didTapMinus:
            state.count = state.count - 1
        case .didTapNumberFact:
            return .task {
                .numberFactResponse(.success("correct!!"))
            }
        case let .numberFactResponse(result):
            switch result {
            case let .success(message):
                state.message = message
            case let .failure(error):
                state.message = error.localizedDescription
            }
            
        case .didTapDismissAlert:
            state.message = nil
        }
        return .none
    }
    
//    let reducer = Reducer<StepState, StepAction, StepEnvironment> { _,_,_ in
//        .none
//    }
}
