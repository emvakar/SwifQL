//
//  SwifQLable+Constraint.swift
//  SwifQL
//
//  Created by Mihael Isaev on 24/07/2019.
//

import Foundation

//MARK: Constraint

extension SwifQLable {
    public var constraint: SwifQLable {
        var parts = self.parts
        parts.appendSpaceIfNeeded()
        parts.append(o: .constraint)
        return SwifQLableParts(parts: parts)
    }
    
    public func constraint(_ value: KeyPathLastPath) -> SwifQLable {
        var parts = self.parts
        parts.appendSpaceIfNeeded()
        parts.append(o: .constraint)
        parts.append(o: .space)
        parts.append(SwifQLPartAlias(value.lastPath))
        return SwifQLableParts(parts: parts)
    }
}

