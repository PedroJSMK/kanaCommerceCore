//
//  ClearCartUseCase.swift
//  kanaCommerceCore
//
//  Created by PedroJSMK on 01/10/21.
//

import Foundation

protocol ClearCartUseCaseProtocol {
    associatedtype Item: CartItemEquatable
    func execute() -> Cart<Item>
}

class ClearCartUseCase<Item: CartItemEquatable>: ClearCartUseCaseProtocol {
    func execute() -> Cart<Item> {
        return Cart(items: [Item]())
    }
}
