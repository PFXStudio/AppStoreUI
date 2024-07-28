//
//  HomeViewModel.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import Foundation
import Combine

enum HomeViewActionType {
    case didTapButton
    case didTapQRButton
}

@MainActor
class HomeViewModel: ObservableObject {
    class TopCardInfo {
        @Published var leftTitle = "Shopee pay"
        @Published var leftValue = "95.000.000"
        @Published var rightTitle = "Coin FDC"
        @Published var rightValue = "95.000.000"
    }
    let service: APIServiceable
    @Published var title = "Hello"
    @Published var breedsListResult = BreedsListResult(items: [])
    var breedImageRandomWithNumberResult = BreedImageRandomWithNumberResult(message: [], status: "")
    @Published var error: Error?
    @Published var skeletonVariant: SkeletonVariant = .blink
    @Published var skeletonState: SkeletonState = .idle
    @Published var topCardInfo = TopCardInfo()

    init(service: APIServiceable) {
        self.service = service
        requestRandomImages()
    }
    
    private func requestRandomImages() {
        var path = APIEndpoints.breedImageRandomWithNumber
        path.append(contentsOf: "/100")
        guard let url = URL(string: path) else {
            return
        }
        Task {
            do {
                breedImageRandomWithNumberResult = try await service.fetchRequest(endpoint: url, parameters: nil, resultType: BreedImageRandomWithNumberResult.self)
                requestFetch()
            } catch {
                self.error = error
            }
        }
    }
    
    private func requestFetch() {
        guard let url = URL(string: APIEndpoints.breedsListAll) else {
            return
        }
        Task {
            do {
                let result = try await service.fetchRequest(endpoint: url, parameters: nil, resultType: BreedsListAllResult.self)
                var displayResult = BreedsListResult(items: [])
                result.message.keys.enumerated().forEach { index, key in
                    guard let imagePath = breedImageRandomWithNumberResult.message[safe: index] else {
                        return
                    }
                    displayResult.items.append(BreedsListResult.Item(name: key, imagePath: imagePath))
                }
                
                breedsListResult = displayResult
            } catch {
                self.error = error
            }
        }
    }
    
    func actionEvent(type: HomeViewActionType) {
        switch type {
        case .didTapButton:
            didTapButton()
        case .didTapQRButton:
            didTapQRButton()
        }
    }
    
    private func didTapButton() {
        switch skeletonState {
        case .loading:
            title = "Hello Sang"
            skeletonState = .idle
            switch skeletonVariant {
            case .blink:
                skeletonVariant = .shining
            case .shining:
                skeletonVariant = .blink
            }
            
        case .idle:
            skeletonState = .loading
        }
    }
    
    private func didTapQRButton() {
        
    }
}

extension Array {
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
