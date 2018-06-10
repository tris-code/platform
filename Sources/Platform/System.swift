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

@inline(__always)
@discardableResult
public func system<T: SignedNumeric>(_ task: () -> T) throws -> T {
    let result = task()
    guard result != -1 else {
        throw SystemError()
    }
    return result
}


@inline(__always)
public func system<T>(
    _ task: () -> UnsafeMutablePointer<T>?) throws -> UnsafeMutablePointer<T>
{
    guard let result = task() else {
        throw SystemError()
    }
    return result
}

@inline(__always)
public func system(
    _ task: () -> OpaquePointer?) throws -> OpaquePointer
{
    guard let result = task() else {
        throw SystemError()
    }
    return result
}
