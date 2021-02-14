//
//  TableWithColumn.swift
//  SwifQL
//
//  Created by Mihael Isaev on 07.01.2020.
//

import Foundation

extension Path {
    public struct TableWithColumn {
        let table: String
        let paths: [String]
    }
}

extension Path.TableWithColumn: SwifQLable {
    public var parts: [SwifQLPart] {
        [SwifQLPartKeyPath(table: table, paths: paths)]
    }
}

extension Path.TableWithColumn: KeyPathLastPath {
    public var lastPath: String { paths.last ?? "" }
}
