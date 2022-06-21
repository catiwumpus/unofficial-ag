//
//  DollModel.swift
//  ag-finder
//
//  Created by Karl Smith on 6/4/22.
//

import SwiftUI

struct Doll: Codable, Identifiable, Hashable {
    let id: String
    let hair: HairColor
    let category: String
    let name: String
    let image: String
}

enum HairColor: String, Codable, CaseIterable {
    case all = "All"
    case brown = "brown"
    case lightBrown = "light brown"
    case blonde = "blonde"
    case darkBrown = "dark brown"
    case honeyBlonde = "honey blonde"
    case texturedBlack = "textured black"
    case red = "red"
    case black = "black"
    case lightBlonde = "light blonde"
}
