//
//  Product.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 10/01/2022.
//

import Foundation

public struct Product{
    
    var name = "";
    var isChecked = false;
    
    init(name: String) {
        self.name = name;
        self.isChecked = false;
    }
    
    public mutating func updateName(name: String){
        self.name = name;
    }
    
    public mutating func changeToChecked(){
        self.isChecked = true;
    }
    
    public mutating func changeToUnchecked(){
        self.isChecked = false;
    }
    
}
