//
//  DisneyViewModel.swift
//  APICallAsyncAwaitSwiftUI
//
//  Created by Pugalmuni R on 22/01/25.
//

import Foundation
import SwiftUI

@MainActor
final class DisneyViewModel: ObservableObject {
    
    @Published var disneyCharacter: [DisneyCharacter] = []
    @Published var isLoading: Bool = false
    @Published var isShouldShowError: Bool = false
    @Published var errorMessage: String? = nil

    private let webService = Webservice()
    func fetchCharacters() async {
        isLoading = true
        errorMessage = nil
        do{
            disneyCharacter = try await webService.fetchAPIData()
            self.isLoading = false
        }
        catch(let errror) {
            isShouldShowError = true
            isLoading = false
            self.errorMessage = errror.localizedDescription
        }
    }
}
