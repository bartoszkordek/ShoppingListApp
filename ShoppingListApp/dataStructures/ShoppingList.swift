//
//  ShoppingList.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import Foundation

public struct ShoppingList{
    
    private var shoppingList = [Product()];
    
    public init() {
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

    public mutating func delete(index: Int) {
        if(self.shoppingList.count-1 >= index){
            shoppingList.remove(at: index);
        }
    }
    
    private func isProductDuplicated(productName: String) -> Bool {
        if(shoppingList.first{$0.getName() == productName} != nil){ return true;}
        return false;
    }
    
}


