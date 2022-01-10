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
    
    init() {
    }
    
    init(name: String) {
        self.name = name;
        self.isChecked = false;
    }
    
    public func getName() -> String {
        return name;
    }
    
    public mutating func setName(name: String){
        self.name = name;
    }
    
    public func getChecked() -> Bool {
        return isChecked;
    }
    
    public mutating func setToChecked(){
        self.isChecked = true;
    }
    
    public mutating func setToUnchecked(){
        self.isChecked = false;
    }
    
}
