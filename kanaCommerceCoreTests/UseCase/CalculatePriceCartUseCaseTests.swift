//
//  CalculatePriceCartUseCaseTests.swift
//  kanaCommerceCoreTests
//
//  Created by PedroJSMK on 01/10/21.
//

import XCTest
@testable import kanaCommerceCore

class CalculatePriceCartUseCaseTests: XCTestCase {
    
    func testRemoveItemUseCase_calculatePrice_ShouldReceiveTwenty() {
        let sut = CalculatePriceCartUseCase<CartItem>()
        XCTAssertEqual(sut.execute(Cart(items: [CartItem.item1, CartItem.item2])), 20)
    }
    
    func testRemoveItemUseCase_calculatePriceForEmptyCart_ShouldReceiveZero() {
        let sut = CalculatePriceCartUseCase<CartItem>()
        XCTAssertEqual(sut.execute(Cart(items: [CartItem]())), 0)
    }
}
