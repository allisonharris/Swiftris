//
//  Array2D.swift
//  Swiftris
//
//  Created by Allison Harris on 11/15/14.
//  Copyright (c) 2014 Bloc. All rights reserved.
//

import Foundation

//#1
class Array2D<T> {
    let columns: Int
    let rows: Int
    
//#2
    var array: Array<T?>

    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
//#3
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
}

//#4
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}
