//
//  APIServiceable.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import Foundation

protocol APIServiceable {
    func fetchRequest<T: Decodable>(endpoint: URL, parameters: [String: Any]?, resultType: T.Type) async throws -> T
}
