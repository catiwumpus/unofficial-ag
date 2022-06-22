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
    let eyes: EyeColor
    let face: Mold
    let brows: Brows
    let skin: Skin
    let freckles: Freckles
    let bangs: Bangs
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
    case darkAuburn = "dark auburn"
    case strawberryBlonde = "strawberry blonde"
    case darkBlonde = "dark blonde"
}

enum EyeColor: String, Codable, CaseIterable {
    case all = "All"
    case brown = "brown"
    case blue = "blue"
    case darkBlue = "dark blue"
    case lightBlue = "light blue"
    case grey = "grey"
    case lightBrown = "light brown"
    case darkBrown = "dark brown"
    case green = "green"
}

enum Mold: String, Codable, CaseIterable {
    case all = "All"
    case addy = "Addy Mold"
    case josefina = "Josefina Mold"
    case classic = "Classic Mold"
    case jess = "Jess Mold"
    case asian = "Asian Mold"
    case sonali = "Sonali Mold"
}

enum Brows: String, Codable, CaseIterable {
    case all = "All"
    case straight = "straight"
    case feathered = "feathered"
}

enum Skin: String, Codable, CaseIterable {
    case all = "All"
    case dark = "dark"
    case medium = "medium"
    case light = "light"
}

enum Freckles: String, Codable, CaseIterable {
    case all = "All"
    case `true` = "true"
    case `false` = "false"
}

enum Bangs: String, Codable, CaseIterable {
    case all = "All"
    case `true` = "true"
    case `false` = "false"
}
