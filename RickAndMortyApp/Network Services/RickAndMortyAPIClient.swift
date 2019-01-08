//
//  RickAndMortyAPIClient.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 12/28/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import Foundation

final class RickAndMortyAPIClient {
    
    static func getCharacters(completionHandler: @escaping (AppError?, [CharacterInfo]?) -> Void) {
        let urlString = "https://rickandmortyapi.com/api/character"
        NetworkHelper.performDataTask(urlString: urlString, httpMethod: "GET") { (error, data, response) in
            if let error = error {
                completionHandler(error, nil)
            } else if let data = data {
                do {
                    let getData = try JSONDecoder().decode(Character.self, from: data)
                    completionHandler(nil, getData.results)
                    
                } catch {
                    completionHandler(AppError.decodingError(error), nil)
                }
            }
            
        }
    }
    static func getEpisodes(completionHandler: @escaping (AppError?, [EpisodeInfo]?) -> Void) {
        let urlString = "https://rickandmortyapi.com/api/episode"
        NetworkHelper.performDataTask(urlString: urlString, httpMethod: "GET") { (error, data, response) in
            if let error = error {
                completionHandler(error, nil)
            } else if let data = data {
                do {
                    let getData = try JSONDecoder().decode(Episode.self, from: data)
                    completionHandler(nil, getData.results)
                    
                } catch {
                    completionHandler(AppError.decodingError(error), nil)
                }
            }
            
        }
    }
}


