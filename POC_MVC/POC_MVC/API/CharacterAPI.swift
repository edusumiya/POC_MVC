//
//  Character API.swift
//  POC_MVP
//
//  Created by resource on 05/03/2018.
//  Copyright © 2018 Sumiya. All rights reserved.
//

import Foundation
import JSONParserSwift

class CharacterAPI {
    
    static let sharedInstance = CharacterAPI()
    
    func GetCharacter() -> CharacterModel {
        var baseResponse : CharacterModel = CharacterModel(dictionary: ["":""])
        
        if let path = Bundle.main.path(forResource: "CharacterLuke", ofType: "json") {
            do {
                let data = try String(contentsOfFile: path, encoding: .utf8)
                baseResponse = try JSONParserSwift.parse(string: data)
                return baseResponse
            } catch {
                return baseResponse
            }
        }
        else
        {
            return baseResponse
        }
    }
}
