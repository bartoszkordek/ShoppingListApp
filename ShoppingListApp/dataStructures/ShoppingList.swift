//
//  ShoppingList.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import Foundation

public struct ShoppingList{
    
    private var shoppingList = [Product()];
    
    init() {
        shoppingList.removeAll();
    }

    public func getShoppingList() -> [Product] {
        return shoppingList;
    }

    public mutating func addProduct(product: Product) -> Bool {
        let productName = product.getName();
        if(productName == nil || productName.isEmpty){ return false;}
        if(isProductDuplicated(productName: productName)){ return false;}
        shoppingList.append(product);
        return true;
    }

    private mutating func delete(at offsets: IndexSet) {
        shoppingList.remove(atOffsets: offsets);
    }
    
    private func isProductDuplicated(productName: String) -> Bool {
        if(shoppingList.first{$0.getName() == productName} != nil){ return true;}
        return false;
    }
    
}


