//
//  CharacterModel.swift
//  POC_MVP
//
//  Created by resource on 03/03/2018.
//  Copyright © 2018 Sumiya. All rights reserved.
//

import Foundation
import JSONParserSwift

class CharacterModel: ParsableModel {
    var name : String?
    var height : String?
    var mass : String?
    var hair_color : String?
    var skin_color : String?
    var eye_color : String?
    var birth_year : String?
    var gender : String?
    var homeworld : String?
    var films : Array<String>?
    var species : Array<String>?
    var vehicles : Array<String>?
    var starships : Array<String>?
    var created : String?
    var edited : String?
    var url : String?
}
