//
//  Webservice.swift
//  APICallAsyncAwaitSwiftUI
//
//  Created by Pugalmuni R on 22/01/25.
//

import Foundation
import SwiftUI

final class Webservice {
    
    let url: String? = Constants.URLs.disneyCharacters
    
    func fetchAPIData() async throws -> [DisneyCharacter] {
        
        guard let urlLink = url, let urlData = URL(string: urlLink) else {
            throw ErrorCases.invalidUrl
        }
        do {
            let(data, response) = try await URLSession.shared.data(from: urlData)
            guard let responseData = response as? HTTPURLResponse, responseData.statusCode == 200 else {
                throw ErrorCases.invalidResponse
            }
                let decodeResponse = try JSONDecoder().decode(DisneyModel.self, from: data)
            return decodeResponse.data
        } catch {
            throw ErrorCases.invalidData
        }
    }
}
