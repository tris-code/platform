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
@testable import Platform

class EnvironmentTests: TestCase {
    func testEnvironment() {
        assertNil(Environment["testEnvironment"])
        Environment["testEnvironment"] = "test"
        assertEqual(Environment["testEnvironment"], "test")
    }

    func testDynamicMemberLookup() {
        assertNil(Environment.testDynamicMemberLookup)
        Environment.testDynamicMemberLookup = "test"
        assertEqual(Environment.testDynamicMemberLookup, "test")
    }
}
