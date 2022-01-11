//
//  ShoppingListAppTests.swift
//  ShoppingListAppTests
//
//  Created by Bartosz Kordek on 06/01/2022.
//

import XCTest
@testable import ShoppingListApp

class ShoppingListTests: XCTestCase {
    
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
        XCTAssertTrue(shoppingList.getShoppingList().count == 3, "Shopping list counter equality test failed");
        
        XCTAssertTrue(shoppingList.getShoppingList()[0].getName() == "Apple", "Shopping list [0] name equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[0].getUnits() == 1, "Shopping list [0] units equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[1].getName() == "Pear", "Shopping list [1] name equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[1].getUnits() == 2, "Shopping list [1] units equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[2].getName() == "Banana", "Shopping list [2] name equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[2].getUnits() == 4, "Shopping list [2] units equality test failed");
    }
    
    func testShouldNotAddProductToShoppingListWhenEmptyName() throws {
        //when
        var shoppingList = ShoppingList();
        let productWithEmptyName = Product(name: "", units: 1);
        
        shoppingList.addProduct(product: productWithEmptyName);
        //then
        XCTAssertTrue(shoppingList.getShoppingList().isEmpty, "Shopping list empty equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList().count == 0, "Shopping list counter equality test failed");
    }
    
    func testShouldNotAddProductToShoppingListWhenDuplicatedName() throws {
        //when
        var shoppingList = ShoppingList();
        let productApple1 = Product(name: "Apple", units: 1);
        let productApple2 = Product(name: "Apple", units: 1);
        
        shoppingList.addProduct(product: productApple1);
        shoppingList.addProduct(product: productApple2);
        //then
        XCTAssertTrue(!shoppingList.getShoppingList().isEmpty, "Shopping list not empty equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList().count == 1, "Shopping list counter equality test failed");
    }
    
    func testShouldDeleteProduct() throws {
        //when
        shoppingList.addProduct(product: product1);
        shoppingList.addProduct(product: product2);
        shoppingList.addProduct(product: product3);
        let index = 1;
        shoppingList.delete(index: 1);
    
        //then
        XCTAssertTrue(!shoppingList.getShoppingList().isEmpty, "Shopping list not empty equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList().count == 2, "Shopping list counter equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[0].getName() == "Apple", "Shopping list [0] name equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[0].getUnits() == 1, "Shopping list [0] units equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[1].getName() == "Banana", "Shopping list [1] name equality test failed");
        XCTAssertTrue(shoppingList.getShoppingList()[1].getUnits() == 4, "Shopping list [1] units equality test failed");
        
    }
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
