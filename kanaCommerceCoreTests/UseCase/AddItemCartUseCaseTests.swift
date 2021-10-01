//
//  AddItemCartUseCaseTests.swift
//  kanaCommerceCoreTests
//
//  Created by PedroJSMK on 01/10/21.
//

import XCTest
@testable import kanaCommerceCore

class AddItemCartUseCaseTests: XCTestCase {
    
    func testAddItemUseCase_addOneItem_ShouldReceiveCartWithOneItem() {
        
        let sut = AddItemCartUseCase<CartItem>()
        
        let cart = sut.execute(CartItem.item1, toCart: Cart(items: [CartItem]()))
        
        XCTAssertEqual(cart.items.count, 1)
    }
    
    func testAddItemUseCase_addTwoEqualItems_ShouldReceiveCartWithOneItemWithQuantityTwo() {
        
        let sut = AddItemCartUseCase<CartItem>()
        
        var cart = sut.execute(CartItem.item1, toCart: Cart(items: [CartItem]()))
        cart = sut.execute(CartItem.item1, toCart: cart)
        
        XCTAssertEqual(cart.items.count, 1)
        XCTAssertEqual(cart.items.first?.quantity, 2)
    }
    
    func testAddItemUseCase_addTwoItems_ShouldReceiveCartWithTwoItems() {
        
        let sut = AddItemCartUseCase<CartItem>()
        
        var cart = sut.execute(CartItem.item1, toCart: Cart(items: [CartItem]()))
        cart = sut.execute(CartItem.item2, toCart: cart)
        
        XCTAssertEqual(cart.items.count, 2)
    }
    
}
