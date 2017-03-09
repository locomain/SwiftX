//
//  Async.swift
//  SwiftX
//
//  Created by Angelo on 07/03/2017.
//
//

import Foundation
#if os(Linux)
    import Dispatch
#endif

///
///
///
func ~><T>(async: @escaping ()->T,main: @escaping (T)->()){
     DispatchQueue(label: "concurrent-worker", attributes: .concurrent).async{
        let res = async();
        DispatchQueue.main.async {
            main(res)
        }
    }
}
