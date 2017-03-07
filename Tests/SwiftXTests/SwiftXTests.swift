import XCTest
@testable import SwiftX

class SwiftXTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(SwiftX().text, "Hello, World!")
    }


    static var allTests : [(String, (SwiftXTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
