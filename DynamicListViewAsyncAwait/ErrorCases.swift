//
//  ErrorCases.swift
//  APICallAsyncAwaitSwiftUI
//
//  Created by Pugalmuni R on 22/01/25.
//

import Foundation

enum ErrorCases: LocalizedError {
    case invalidUrl
    case invalidResponse
    case invalidData
    
    var errorDescription: String? {
        switch self {
        case .invalidUrl:
            return Constants.ErrorMessages.invalidURL
        case .invalidResponse:
            return Constants.ErrorMessages.invalidResponse
        case .invalidData:
            return Constants.ErrorMessages.invalidData
        }
    }
}
