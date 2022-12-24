//
//  MenuItemList.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation
import SwiftUI

struct MenuItemList: View {
    
    var body: some View {
        VStack {
            TextField("Search", text: $search_text)
            List(menu_items) {
                menu_item in
                MenuItemDetail(menu_item: menu_item)
            }
        }
    }
}

struct MenuItemList_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemList()
    }
}
