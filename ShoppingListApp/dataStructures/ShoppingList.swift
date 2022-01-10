//
//  ShoppingList.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import Foundation

public struct ShoppingList{
    
    private var shoppingList = [Product()];

    public func getShoppingList() -> [Product] {
        return shoppingList;
    }

    public func addProduct(productName: String) -> Bool {
        if(productName == nil || productName.isEmpty){ return true;}
        return false;
    }

    private mutating func delete(at offsets: IndexSet) {
        shoppingList.remove(atOffsets: offsets);
    }
    
    private func isProductDuplicated(productName: String) -> Bool {
        if(shoppingList.first{$0.getName() == productName} != nil){ return true;}
        return false;
    }
    
}


