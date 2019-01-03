//
//  Character.swift
//  RickAndMortyApp
//
//  Created by Jeffrey Almonte on 12/27/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import Foundation

struct Character: Codable {
    let results: [CharacterInfo]
}

struct CharacterInfo: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let origin: Origin
    let location: Location
    let image: String
}

struct Origin: Codable {
    let name: String
}
struct Location: Codable {
    let name: String
}
