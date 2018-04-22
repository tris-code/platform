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

#if os(Linux)
    var urandom: Int32 = {
        let descriptor = open("/dev/urandom", O_RDONLY)
        precondition(descriptor >= 1, "/dev/urandom is unavailable")
        return descriptor
    }()

    public func arc4random() -> UInt32 {
        var result: UInt32 = 0
        arc4random_buf(&result, MemoryLayout<UInt32>.size)
        return result
    }

    public func arc4random_uniform(_ upperBound: UInt32) -> UInt32 {
        return arc4random() % upperBound
    }

    public func arc4random_buf(_ buffer: UnsafeMutableRawPointer, _ count: Int) {
        let result = read(urandom, buffer, count)
        precondition(result == count, "read less than expected")
    }
#endif
