//
//  MenuItem.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation

struct MenuItem: Codable, Identifiable {
    var id: String
    var category: String
    var name: String
    var description: String
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        category = try container.decode(String.self, forKey: .category)
        name = try container.decode(String.self, forKey: .name)
        description = try container.decode(String.self, forKey: .description)
        
        id = UUID().uuidString
    }
}
