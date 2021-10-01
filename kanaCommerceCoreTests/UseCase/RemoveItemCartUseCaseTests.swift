//
//  RemoveItemCartUseCaseTests.swift
//  kanaCommerceCoreTests
//
//  Created by PedroJSMK on 01/10/21.
//

import XCTest
@testable import kanaCommerceCore

func testRemoveItemUseCase_removeOneItem_ShouldReceiveCartWithOneItem() {
    
    let sut = RemoveItemCartUseCase<CartItem>()
    
    let cart = sut.execute(CartItem.item1, toCart: Cart(items: [CartItem.item1, CartItem.item2]))
    
    XCTAssertEqual(cart.items.count, 1)
    XCTAssertEqual(cart.items.first, CartItem.item2)
    XCTAssertEqual(cart.items.last, CartItem.item2)
}

func testRemoveItemUseCase_removeOneItemWithQuantityTwo_ShouldReceiveCartWithTwoItems() {
    
    let sut = RemoveItemCartUseCase<CartItem>()
    let item = CartItem(item: Item(id: 4, name: "Item", price: 10))
    item.setQuantity(2)
    
    let cart = sut.execute(item, toCart: Cart(items: [item, CartItem.item2]))
    
    XCTAssertEqual(cart.items.count, 2)
    XCTAssertEqual(cart.items.first, item)
    XCTAssertEqual(cart.items.last, CartItem.item2)
}

func testRemoveItemUseCase_removeOneItemThatIsNotOnTheCart_ShouldReceiveCartWithTheSameItems() {
    
    let sut = RemoveItemCartUseCase<CartItem>()
    
    let cart = sut.execute(CartItem.item3, toCart: Cart(items: [CartItem.item1, CartItem.item2]))
    
    XCTAssertEqual(cart.items.count, 2)
    XCTAssertEqual(cart.items.first, CartItem.item1)
    XCTAssertEqual(cart.items.last, CartItem.item2)
}


