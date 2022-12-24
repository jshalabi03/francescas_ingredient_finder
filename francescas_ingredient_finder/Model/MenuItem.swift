//
//  MenuItem.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation

struct MenuItem: Codable, Identifiable {
    var id: Int
    var type: String
    var name: String
    var description: String
}
