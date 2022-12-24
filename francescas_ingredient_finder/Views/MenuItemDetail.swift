//
//  MenuItemRow.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation
import SwiftUI

struct MenuItemDetail: View {
    var menu_item: MenuItem
    @State private var show_description = false
    
    var body: some View {
        VStack {
            HStack {
                Text(menu_item.name)
                    .font(.headline)
    //            Text(menu_item.description)
    //                .font(.subheadline)
                if (show_description) {
                    Image(systemName: "chevron.up")
                } else {
                    Image(systemName: "chevron.down")
                }
                Spacer()
            }.onTapGesture {
                self.show_description.toggle()
            }
            if show_description {
                Text(menu_item.description)
                    .padding(.top, 1)
            }
        }
    }
}

struct MenuItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetail(menu_item: menu_items[0])
    }
}
