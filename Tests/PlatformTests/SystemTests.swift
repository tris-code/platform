/******************************************************************************
 *                                                                            *
 * Tris Foundation disclaims copyright to this source code.                   *
 * In place of a legal notice, here is a blessing:                            *
 *                                                                            *
 *     May you do good and not evil.                                          *
 *     May you find forgiveness for yourself and forgive others.              *
 *     May you share freely, never taking more than you give.                 *
 *                                                                            *
 ******************************************************************************/

import Test
import Platform

class SystemTests: TestCase {
    func testInt() {
        assertThrowsError(try system {
            return -1
        })
    }

    func testOpaquePointer() {
        assertThrowsError(try system {
            return nil as OpaquePointer?
        })
    }

    func testGenericPointer() {
        assertThrowsError(try system {
            return nil as UnsafeMutablePointer<Int>?
        })
    }
}
