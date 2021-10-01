//
//  kanaCommerceCoreTests.swift
//  kanaCommerceCoreTests
//
//  Created by PedroJSMK on 01/10/21.
//

import XCTest
import kanaCommerceCore

class kanaCommerceCoreTests: XCTestCase {
    
    let item = CartItem(item: Item(id: 4, name: "Item 1", price: 10))
    
    func testkanaCommerceCore_start_ShouldReturnAValidkanaCommerceCore() {

        let sut = kanaCommerceCore.startWith(items: [CartItem]())
        
        XCTAssertNotNil(sut)
        
        func testkanaCommerceCore_startWithItems_ShouldReturntestkanaCommerceCoreWithCartPopulatedWithItems() {

            let sut = kanaCommerceCore.startWith(items: [item])
            
            XCTAssertEqual(sut.currentCart.items.count, 1)
            XCTAssertEqual(sut.currentCart.items, [item])
        }
        
        func testkanaCommerceCore_addItem_ShouldReturnCartWithItem() {

            let sut = kanaCommerceCore.startWith(items: [CartItem]())
            
            let cart = sut.add(item: item)
            
            XCTAssertEqual(cart.items.count, 1)
            XCTAssertEqual(cart.items, [item])
            XCTAssertEqual(sut.currentCart.items.count, 1)
            XCTAssertEqual(sut.currentCart.items, [item])
        }
        
        func testkanaCommerceCore_removeItem_ShouldReturnCartWithoutItems() {

            let sut = kanaCommerceCore.startWith(items: [item])
            
            let cart = sut.remove(item: item)
            
            XCTAssertEqual(cart.items.count, 0)
            XCTAssertEqual(cart.items, [])
            XCTAssertEqual(sut.currentCart.items.count, 0)
            XCTAssertEqual(sut.currentCart.items, [])
        }
        
        func testkanaCommerceCore_clear_ShouldReturnCartWithoutItems() {

            let sut = kanaCommerceCore.startWith(items: [item])
            
            let cart = sut.clear()
            
            XCTAssertEqual(cart.items.count, 0)
            XCTAssertEqual(cart.items, [])
            XCTAssertEqual(sut.currentCart.items.count, 0)
            XCTAssertEqual(sut.currentCart.items, [])
        }
        
        func testkanaCommerceCore_calculateTotalPrice_ShouldReturnCartTotalPrice() {
           
            let sut = kanaCommerceCore.startWith(items: [item])
            
            let price = sut.calculateTotalPrice()
            
            XCTAssertEqual(price, 10)
        }
    }
    
}
