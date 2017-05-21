/*
 * Copyright 2017 Tris Foundation and the project authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License
 *
 * See LICENSE.txt in the project root for license information
 * See CONTRIBUTORS.txt for the list of the project authors
 */

import Test
@testable import Platform

class PlatformTests: TestCase {
    func testRandom() {
        let first = arc4random()
        let second = arc4random()
        assertNotEqual(first, second)
    }

    func testRandomUniform() {
        for _ in 0..<1_000 {
            assert(arc4random_uniform(12) < 12)
        }
    }

    func testRandomBuffer() {
        var first = [UInt8](repeating: 0, count: 10)
        var second = [UInt8](repeating: 0, count: 10)
        arc4random_buf(&first, first.count)
        arc4random_buf(&second, second.count)
        assertNotEqual(first, second)
    }


    static var allTests = [
        ("testRandom", testRandom),
        ("testRandomUniform", testRandomUniform),
    ]
}
