//
//  Operators.swift
//  filecrypt
//
//  Created by Koray Koska on 28.03.18.
//

import Foundation

// MARK: - Color specific

public func +(lhs: ANSIColor, rhs: String) -> String {
    return "\(lhs.rawValue)\(rhs)"
}

public func +(lhs: String, rhs: ANSIColor) -> String {
    return "\(lhs)\(rhs.rawValue)"
}

// MARK: - SwiftLogger.Level operators

extension SwiftLogger.Level: Comparable {}

public func <(lhs: SwiftLogger.Level, rhs: SwiftLogger.Level) -> Bool {
    return lhs.rawValue < rhs.rawValue
}

public func ==(lhs: SwiftLogger.Level, rhs: SwiftLogger.Level) -> Bool {
    return lhs.rawValue == rhs.rawValue
}
