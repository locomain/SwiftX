//
//  Pointer.swift
//  SwiftX
//
//  Created by Angelo Perrello on 06/03/2017.
//
//

import Foundation
#if os(Linux)
    import Dispatch
#endif

///
/// Creates pointer of predefined value
///
prefix func *- <T>(val: inout T) -> Pointer<T> {
    return Pointer<T>.create(val: &val)
}

///
/// UnsafeMutablePointer is closest to the traditional typed pointer
///
typealias Pointer<T> = UnsafeMutablePointer<T>

extension UnsafeMutablePointer{
    ///
    /// Creates pointer with empty pointee
    ///
    static func create<T>(capacity: Int)->Pointer<T>{
        return Pointer<T>.allocate(capacity: capacity)
    }
    ///
    /// Creates pointer of predefined value
    ///
    static func create<T>(val: Pointer<T>) ->Pointer<T>{
        return val
    }
}

