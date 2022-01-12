//
//  Product.swift
//  ShoppingListApp
//
//  Created by Bartosz Kordek on 10/01/2022.
//

import Foundation

public struct Product: Identifiable{
    
    public let id = UUID();
    private var name = "";
    private var units = 0;
    private var isChecked = false;
    
    public init() {
    }
    
    public init(name: String, units: Int) {
        self.name = name;
        self.units = units;
        self.isChecked = false;
    }
    
    public func getName() -> String {
        return name;
    }
    
    public mutating func setName(name: String){
        self.name = name;
    }
    
    public func getUnits() -> Int {
        return units;
    }
    
    public mutating func setUnits(units: Int){
        self.units = units;
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
