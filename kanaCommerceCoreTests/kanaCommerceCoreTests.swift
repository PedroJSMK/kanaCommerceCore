//
//  kanaCommerceCoreTests.swift
//  kanaCommerceCoreTests
//
//  Created by PedroJSMK on 01/10/21.
//

import XCTest
import kanaCommerceCore

class kanaCommerceCore: XCTestCase {
    
    let item = CartItem(item: Item(id: 4, name: "Item 1", price: 10))
    
    func testkanaCommerceCore_start_ShouldReturnAValidkanaCommerceCore() {
        //Arrange
        let sut = kanaCommerceCore.startWith(items: [CartItem]())
        
        //Assert
        XCTAssertNotNil(sut)
        
        func testkanaCommerceCore_startWithItems_ShouldReturntestkanaCommerceCoreWithCartPopulatedWithItems() {
            //Arrange
            let sut = kanaCommerceCore.startWith(items: [item])
            
            //Assert
            XCTAssertEqual(sut.currentCart.items.count, 1)
            XCTAssertEqual(sut.currentCart.items, [item])
        }
        
        func testkanaCommerceCore_addItem_ShouldReturnCartWithItem() {
            //Arrange
            let sut = kanaCommerceCore.startWith(items: [CartItem]())
            
            //Act
            let cart = sut.add(item: item)
            
            //Assert
            XCTAssertEqual(cart.items.count, 1)
            XCTAssertEqual(cart.items, [item])
            XCTAssertEqual(sut.currentCart.items.count, 1)
            XCTAssertEqual(sut.currentCart.items, [item])
        }
        
        func testkanaCommerceCore_removeItem_ShouldReturnCartWithoutItems() {
            //Arrange
            let sut = kanaCommerceCore.startWith(items: [item])
            
            //Act
            let cart = sut.remove(item: item)
            
            //Assert
            XCTAssertEqual(cart.items.count, 0)
            XCTAssertEqual(cart.items, [])
            XCTAssertEqual(sut.currentCart.items.count, 0)
            XCTAssertEqual(sut.currentCart.items, [])
        }
        
        func testkanaCommerceCore_clear_ShouldReturnCartWithoutItems() {
            //Arrange
            let sut = kanaCommerceCore.startWith(items: [item])
            
            //Act
            let cart = sut.clear()
            
            //Assert
            XCTAssertEqual(cart.items.count, 0)
            XCTAssertEqual(cart.items, [])
            XCTAssertEqual(sut.currentCart.items.count, 0)
            XCTAssertEqual(sut.currentCart.items, [])
        }
        
        func testkanaCommerceCore_calculateTotalPrice_ShouldReturnCartTotalPrice() {
            //Arrange
            let sut = kanaCommerceCore.startWith(items: [item])
            
            //Act
            let price = sut.calculateTotalPrice()
            
            //Assert
            XCTAssertEqual(price, 10)
        }
    }

