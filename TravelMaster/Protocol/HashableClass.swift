//
//  HashableClass.swift
//  TravelMaster
//
//  Created by Wang Yulong on 17/11/18.
//  Copyright © 2018 Wang Yulong. All rights reserved.
//

import Foundation

open class HashableClass {
    public init() {}
}

// MARK: - <Hashable>

extension HashableClass: Hashable {
    public var hashValue: Int {
        return ObjectIdentifier(self).hashValue
    }
}

// MARK: - <Equatable>

extension HashableClass: Equatable {}
public func ==(lhs: HashableClass, rhs: HashableClass) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}
