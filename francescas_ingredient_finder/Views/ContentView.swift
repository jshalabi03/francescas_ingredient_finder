//
//  ContentView.swift
//  francescas_ingredient_finder
//
//  Created by Jacob Shalabi on 12/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            MenuItemList()
                .navigationTitle(
                    Text("Francesca's")
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
