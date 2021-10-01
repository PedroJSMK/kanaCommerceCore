//
//  ClearCartUseCaseTests.swift
//  kanaCommerceCoreTests
//
//  Created by PedroJSMK on 01/10/21.
//

import XCTest
@testable import kanaCommerceCore

class ClearCartUseCaseTests: XCTestCase {

    func testAddItemUseCase_clearCart_ShouldReceiveAEmptyCart() {
        let sut = ClearCartUseCase<CartItem>()
        XCTAssertTrue(sut.execute().items.isEmpty)
    }

}
