//
//  MenuItemList.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation
import SwiftUI

struct MenuItemList: View {
    
    @State private var search_text = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            MenuSearchBar(searchText: $search_text)
            List(menu_items.filter {
                menu_item in self.search_text.isEmpty || menu_item.name.lowercased().contains(self.search_text.lowercased())
                                
            }) {
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
