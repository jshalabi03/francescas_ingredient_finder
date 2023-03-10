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
            MenuSearchBar(search_text: $search_text)
            
            let filtered_menu_items = menu_items.filter {
                menu_item in
                self.search_text.isEmpty ||
                menu_item.name
                    .lowercased()
                    .contains(self.search_text.lowercased())
            }
            
            let grouped_menu_items = Dictionary(grouping: filtered_menu_items, by: { $0.category })
                .sorted {
                    item1, item2 in
                    category_order.firstIndex(of: item1.key)!
                    < category_order.firstIndex(of: item2.key)!
                }
                .map {(key: String, value: [MenuItem]) in (key: key, value: value)}
            
            List {
                ForEach(grouped_menu_items, id: \.key) {
                    title, items in
                    Section(header: Text(title).font(.title).foregroundColor(.black)) {
                        ForEach(items) { menu_item in
                            MenuItemDetail(menu_item: menu_item)
                        }
                    }
                }
            }
        }
    }
}

struct MenuItemList_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemList()
    }
}
