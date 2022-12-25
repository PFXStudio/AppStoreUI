//
//  StepAction.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/24.
//

import Foundation
import ComposableArchitecture

enum StepAction: Equatable {
    case didTapPlus
    case didTapMinus
    case didTapNumberFact
    case didTapDismissAlert
    case numberFactResponse(Result<String, Error>)
    
    static func == (lhs: StepAction, rhs: StepAction) -> Bool {
        switch (lhs, rhs) {
        case (.didTapPlus, .didTapPlus): return true
        case (.didTapMinus, .didTapMinus): return true
        case (.didTapNumberFact, .didTapNumberFact): return true
        case (.numberFactResponse, .numberFactResponse): return true
        default: return false
        }
    }
}

struct StepEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>
    var numberFact: (Int) -> Effect<String, Error>
}
