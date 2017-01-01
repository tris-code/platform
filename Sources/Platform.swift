/*
 * Copyright 2017 Tris Foundation and the project authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License
 *
 * See LICENSE.txt in the project root for license information
 * See CONTRIBUTORS.txt for the list of the project authors
 */

#if os(Linux)
    @_exported import Glibc
#else
    @_exported import Darwin.C
#endif

#if os(Linux)
    public let SOCK_STREAM = Int32(Glibc.SOCK_STREAM.rawValue)
#endif
