/*
 * Copyright 2017 Tris Foundation and the project authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License
 *
 * See LICENSE.txt in the project root for license information
 * See CONTRIBUTORS.txt for the list of the project authors
 */

import XCTest
@testable import Platform

class PlatformTests: XCTestCase {
    func testRandom() {
        let first = arc4random()
        let second = arc4random()
        XCTAssertNotEqual(first, second)
    }

    func testRandomUniform() {
        for _ in 0..<1_000 {
            XCTAssert(arc4random_uniform(12) < 12)
        }
    }

    func testRandomBuffer() {
        var first = [UInt8](repeating: 0, count: 10)
        var second = [UInt8](repeating: 0, count: 10)
        arc4random_buf(&first, first.count)
        arc4random_buf(&second, second.count)
        XCTAssertNotEqual(first, second)
    }


    static var allTests : [(String, (PlatformTests) -> () throws -> Void)] {
        return [
            ("testRandom", testRandom),
            ("testRandomUniform", testRandomUniform),
        ]
    }
}
