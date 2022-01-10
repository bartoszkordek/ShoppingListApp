//
//  ContentView.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import SwiftUI

struct ShoppingListView: View {
    var shoppingList = ShoppingList();
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ShoppingListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListView()
    }
}
