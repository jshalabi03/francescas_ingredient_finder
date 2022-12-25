//
//  MenuSearchBar.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/24/22.
//

import Foundation
import SwiftUI

struct MenuSearchBar: View {
    @Binding var search_text: String

    var body: some View {
        HStack {
            TextField("Search", text: $search_text)
                .padding(10)
            .autocorrectionDisabled(true)
            
            if !search_text.isEmpty {
                Button(action: {
                    self.search_text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.secondary)
                }.padding(.all, 10)
            }
        }.overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.primary, lineWidth: 1)
        ).padding(.all, 10)
    }
}

//struct MenuSearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        MenuSearchBar(searchText: "")
//    }
//}
