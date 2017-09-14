/*
 * Copyright 2017 Tris Foundation and the project authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License
 *
 * See LICENSE.txt in the project root for license information
 * See CONTRIBUTORS.txt for the list of the project authors
 */

public struct Descriptor: RawRepresentable {
    public let rawValue: Int32

    public init?(rawValue: Int32) {
        guard rawValue > 0 else {
            return nil
        }
        self.rawValue = rawValue
    }

    public var flags: Int32 {
        get { return fcntl(rawValue, F_GETFD, 0) }
        set { _ = fcntl(rawValue, F_SETFD, newValue) }
    }

    public var status: Int32 {
        get { return fcntl(rawValue, F_GETFL, 0) }
        set { _ = fcntl(rawValue, F_SETFL, newValue) }
    }
}
