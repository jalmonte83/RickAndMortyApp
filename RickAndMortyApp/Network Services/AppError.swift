//
//  AppError.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 12/27/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import Foundation

enum AppError: Error {
    case badURL(String)
    case networkError(Error)
    case noResponse
    case decodingError(Error)
    
    public func errorMessage() -> String {
        switch self {
        case .badURL(let str):
            return "badURL: \(str)"
        case .networkError(let error):
            return "networkError: \(error)"
        case .noResponse:
            return "no network response"
        case .decodingError(let error):
            return "decoding error: \(error)"
        }
    }
}
