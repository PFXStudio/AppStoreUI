//
//  StoreClient.swift
//  AppStore
//
//  Created by AsGuard on 2022/12/18.
//

import Foundation
import ComposableArchitecture

// https://itunes.apple.com/search?term=apple&entity=software

struct StoreClient {
    var requestSearch: @Sendable (String) async throws -> SearchResult
}

extension StoreClient: DependencyKey {
    static let liveValue = StoreClient(requestSearch: { query in
        var components = URLComponents(string: Config.searchPath)!
        components.queryItems = [
            URLQueryItem(name: "term", value: query),
            URLQueryItem(name: "entity", value: "software")
        ]
        
        let (data, _) = try await URLSession.shared.data(from: components.url!)
        return try jsonDecoder.decode(SearchResult.self, from: data)
    })
}

// "2017-07-26T15:24:27Z"
private let jsonDecoder: JSONDecoder = {
    let decoder = JSONDecoder()
    let dateFormatter = DateFormatter()
    dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    decoder.dateDecodingStrategy = .formatted(dateFormatter)
    return decoder
}()
