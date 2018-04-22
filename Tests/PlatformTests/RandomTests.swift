/******************************************************************************
 *                                                                            *
 * Tris Foundation disclaims copyright to this source code.                   *
 * In place of a legal notice, here is a blessing:                            *
 *                                                                            *
 *     May you do good and not evil.                                          *
 *     May you find forgiveness for yourself and forgive others.              *
 *     May you share freely, never taking more than you give.                 *
 *                                                                            *
 ******************************************************************************
 *  This file contains code that has not yet been described                   *
 ******************************************************************************/

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
            assertTrue(arc4random_uniform(12) >= 0)
            assertTrue(arc4random_uniform(12) < 12)
        }
    }

    func testRandomBuffer() {
        var first = [UInt8](repeating: 0, count: 10)
        var second = [UInt8](repeating: 0, count: 10)
        arc4random_buf(&first, first.count)
        arc4random_buf(&second, second.count)
        assertNotEqual(first, second)
    }
}
