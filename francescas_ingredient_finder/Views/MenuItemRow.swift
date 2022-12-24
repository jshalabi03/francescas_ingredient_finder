//
//  MenuItemRow.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation
import SwiftUI

struct MenuItemRow: View {
    var menu_item: MenuItem
    
    var body: some View {
        HStack {
            Text(menu_item.name)
        }
    }
}

struct MenuItemRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemRow(menu_item: menu_items[0])
    }
}
