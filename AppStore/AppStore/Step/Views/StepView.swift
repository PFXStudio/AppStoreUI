//
//  StepView.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/24.
//

import Foundation
import SwiftUI
import ComposableArchitecture

struct StepView: View {
    let store: StoreOf<StepReducer>
//    var body: some View {
//        WithViewStore(self.store) { viewStore in
//            VStack {
//                HStack {
//                    Button("-") { viewStore.send(.didTapMinus) }
//                    Text("\(viewStore.count)")
//                    Button("+") { viewStore.send(.didTapPlus) }
//                }
//
//                Button("number Fact") { viewStore.send(.didTapNumberFact) }
//            }
//            .alert(item: viewStore.binding(get: { state in
//                state.message.map { FactAlert(title: $0) }
//            }, send: { value in
//                    .didTapDismissAlert
//            })) { Alert(title: Text("aaa")) }
//        }
//    }
    
    var body: some View {
      WithViewStore(self.store) { viewStore in
        VStack {
          HStack {
            Button("−") { viewStore.send(.didTapMinus) }
            Text("\(viewStore.count)")
            Button("+") { viewStore.send(.didTapPlus) }
          }

          Button("Number fact") { viewStore.send(.didTapNumberFact) }
        }
        .alert(
          item: viewStore.binding(
            get: { $0.message.map(FactAlert.init(title:)) },
            send: .didTapDismissAlert
          ),
          content: { Alert(title: Text($0.title)) }
        )
      }
    }
}

struct FactAlert: Identifiable {
    var title: String
    var id: String { self.title }
}
