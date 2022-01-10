//
//  ProductTests.swift
//  ShoppingListAppTests
//
//  Created by Bartosz Kordek on 10/01/2022.
//

import XCTest
@testable import ShoppingListApp

class ProductTests: XCTestCase {
    
    var product = Product();

    override func setUpWithError() throws {
        product = Product(name: "Apple", units: 1);
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testShouldCreateProductWhenValidData() throws {
        XCTAssertTrue(product.getName() == "Apple", "Product name equality test failed");
        XCTAssertTrue(product.getUnits() == 1, "Product units equality test failed");
        XCTAssertTrue(product.getChecked() == false, "Product checked status equality test failed");
    }
    
    func testShouldSetName() throws {
        //Apple -> Pear
        product.setName(name: "Pear")
        XCTAssertTrue(product.getName() == "Pear", "Product name setting equality test failed");
    }
    
    func testShouldSetUnits() throws {
        //1 -> 2
        product.setUnits(units: 2);
        XCTAssertTrue(product.getUnits() == 2, "Product units setting equality test failed");
    }
    
    func testShouldSetCheckedStatus() throws {
        //from false to true
        product.setToChecked();
        XCTAssertTrue(product.getChecked() == true, "Product set checked status operation (false -> true) equality test failed");
        
        product.setToUnchecked();
        XCTAssertTrue(product.getChecked() == false, "Product set checked status operation (true -> false) equality test failed");
    }

}
