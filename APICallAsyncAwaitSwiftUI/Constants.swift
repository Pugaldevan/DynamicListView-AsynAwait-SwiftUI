//
//  Constants.swift
//  APICallAsyncAwaitSwiftUI
//
//  Created by Pugalmuni R on 23/01/25.
//

import Foundation

struct Constants {
    
    // MARK: - API URLs
    struct URLs {
        static let disneyCharacters = "https://api.disneyapi.dev/character"
    }
    
    // MARK: - Error Messages
    struct ErrorMessages {
        static let invalidURL = "The URL is invalid."
        static let invalidResponse = "The response is invalid."
        static let invalidData = "The data is invalid."
    }
    
    // MARK: - General Strings
    struct General {
        static let appTitle = "Disney Characters"
        static let okButton = "OK"
        static let cancelButton = "Cancel"
        static let generalErrorMessage = "An error occurred."
        static let error = "Error!"
    }
}
