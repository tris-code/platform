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

class CPUTests: TestCase {
    func testCPUCount() {
        assertTrue(CPU.count > 0)
        assertTrue(CPU.count < 256)
    }

    func testCPUTotalCount() {
        assertTrue(CPU.totalCount > 0)
        assertTrue(CPU.totalCount < 256)
    }
}
