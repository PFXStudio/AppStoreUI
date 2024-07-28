//
//  AlamofireAPIService.swift
//  HomeWork
//
//  Created by nyon on 7/28/24.
//

import Foundation
import Alamofire

struct AlamofireAPIService: APIServiceable {
    func fetchRequest<T: Decodable>(endpoint: URL, parameters: [String: Any]?, resultType: T.Type) async throws -> T {
        let request = AF.request(endpoint, method: .get, parameters: parameters, encoding: URLEncoding.default)
        let dataTask = request.serializingDecodable(resultType)
        
        switch await dataTask.result {
        case .success(let value):
            guard let response = await dataTask.response.response else {
                throw AFError.responseValidationFailed(reason: .dataFileNil)
            }
            guard (200...299).contains(response.statusCode) else {
                throw AFError.responseValidationFailed(reason: .unacceptableStatusCode(code: response.statusCode))
            }
            
            return value
        case .failure:
            throw AFError.invalidURL(url: endpoint)
        }
    }
}
