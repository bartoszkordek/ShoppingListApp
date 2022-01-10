//
//  ShoppingList.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import Foundation

public struct ShoppingList{
    
    private var shoppingList = ["Bread", "Pepsi", "Beer"];

    public func getShoppingList() -> [String] {
        return shoppingList;
    }

    public func addProduct(product: String) -> Bool {
        if(product == nil || product.isEmpty){ return true;}
        return false;
    }

    private mutating func delete(at offsets: IndexSet) {
        shoppingList.remove(atOffsets: offsets);
    }

    
    private func isProductDuplicated(product: String) -> Bool {
            if(shoppingList.contains(product)){ return true;}
            return false;
    }

    private func isProductNameEmpty(product: String) -> Bool {
            if(product == nil || product.isEmpty){ return true;}
            return false;
    }
    
}


