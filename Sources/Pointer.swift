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

prefix func *- <T>(val: T) -> Pointer<T> {
    var count = 1
    if let st = val as? String{
        count = st.characters.count
    }
    if let st = val as? Array<Any>{
        count = st.count
    }
    return Pointer<T>.createPointer(val: val, capacity: count)
}

typealias Pointer<T> = UnsafeMutablePointer<T>

extension UnsafeMutablePointer{
    static func createPointer<T>(val:T,capacity: Int)->Pointer<T>{
        let pointer:Pointer<T> = Pointer.allocate(capacity: capacity)
        pointer.pointee = val
        return pointer
    }
}
