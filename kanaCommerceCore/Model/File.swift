//
//  File.swift
//  kanaCommerceCore
//
//  Created by PedroJSMK on 01/10/21.
//

import Foundation

public protocol ItemProtocol {
    var id: Int { get }
    var name: String { get }
    var price: Double { get }
}

public protocol CartItemProtocol {
    var item: ItemProtocol { get }
    var price: Double { get }
    var quantity: Int { get }

    func setQuantity(_ quantity: Int)
}

public typealias CartItemEquatable = CartItemProtocol & Equatable

public struct Cart<Item: CartItemEquatable> {
    public let items: [Item]
}
