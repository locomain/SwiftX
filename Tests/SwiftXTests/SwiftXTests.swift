import XCTest
@testable import SwiftX

class SwiftXTests: XCTestCase {
    func main() {
        XCTAssertEqual(SwiftX().wut, "Apes are taking over the world")
    }
    
    func asnc(){
        { return "someval" } ~> { val in return val }
    }

    static var allTests : [(String, (SwiftXTests) -> () throws -> Void)] {
        return [
            ("main", main)
        ]
    }
}
