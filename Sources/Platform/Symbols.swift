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

public struct DynamicLoadError: Error, CustomStringConvertible {
    public var description = String(cString: dlerror())
}

public func resolveFunction<T>(name: String) throws -> T {
    guard let handle = dlopen(nil, RTLD_LAZY) else {
        throw DynamicLoadError()
    }
    defer { dlclose(handle) }

    guard let pointer = dlsym(handle, name) else {
        throw DynamicLoadError()
    }

    return unsafeBitCast(pointer, to: T.self)
}
