//
//  MenuSearchBar.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation
import SwiftUI

struct MenuSearchBar: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            TextField("Search", text: $searchText)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding(10)
        }
    }
}

struct MenuSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        MenuSearchBar()
    }
}
