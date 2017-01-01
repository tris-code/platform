/*
 * Copyright 2017 Tris Foundation and the project authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License
 *
 * See LICENSE.txt in the project root for license information
 * See CONTRIBUTORS.txt for the list of the project authors
 */

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
