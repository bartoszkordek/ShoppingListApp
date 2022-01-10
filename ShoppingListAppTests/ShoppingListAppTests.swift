//
//  ShoppingListAppTests.swift
//  ShoppingListAppTests
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import XCTest
@testable import ShoppingListApp

class ShoppingListAppTests: XCTestCase {
    
    var product1 = Product();
    var product2 = Product();
    var product3 = Product();
    
    var shoppingList = ShoppingList();

    override func setUpWithError() throws {
        product1 = Product(name: "Apple", units: 1);
        product2 = Product(name: "Pear", units: 2);
        product3 = Product(name: "Banana", units: 4);
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testShouldAddProductsToShoppingList() throws {
        //when
        shoppingList.addProduct(product: product1);
        shoppingList.addProduct(product: product2);
        shoppingList.addProduct(product: product3);
        
        //then
        XCTAssertTrue(!shoppingList.getShoppingList().isEmpty, "Shopping list not empty equality test failed");
        print(shoppingList.getShoppingList());
        print(shoppingList.getShoppingList().count);
        XCTAssertTrue(shoppingList.getShoppingList().count == 3, "Shopping list counter equality test failed");
    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
