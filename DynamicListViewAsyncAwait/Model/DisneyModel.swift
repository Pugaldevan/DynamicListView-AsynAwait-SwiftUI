//
//  DisneyModel.swift
//  APICallAsyncAwaitSwiftUI
//
//  Created by Pugalmuni R on 22/01/25.
//

import Foundation

// Mark:- Response Model
struct DisneyModel: Codable {
    
    let data: [DisneyCharacter]
}
// Mark:- DisneyCharacter

struct DisneyCharacter: Codable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String?
    let films:[String]
    let shortFilms:[String]
    let tvShows:[String]
    let videoGames:[String]

    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case films
        case shortFilms
        case tvShows
        case videoGames
        case name
        case imageUrl
    }
}
