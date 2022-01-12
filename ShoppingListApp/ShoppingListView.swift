//
//  ContentView.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import SwiftUI

struct ShoppingListView: View {
    @State var shoppingList = ShoppingList();
    
    var body: some View {
        NavigationView {
            List {
                ForEach(shoppingList.getShoppingList(), id: \.self) { product in
                    Text(product.getName())
                }
            }
            .navigationBarTitle(Text("Products"))
            
            .navigationBarItems(trailing: Button(action: {
                self.addRow()
            }) {
                Image(systemName: "plus")
            })
        }
    }
    
    private func addRow() {
        self.shoppingList.addProduct(product: Product(name: "Banana", units: 9));
        }
}

struct ShoppingListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListView()
    }
}

private func isProductNameEmpty(productName: String) -> Bool {
    if(productName == nil || productName.isEmpty){ return true;}
    return false;
}
