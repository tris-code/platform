import XCTest

import PlatformTests

var tests = [XCTestCaseEntry]()
tests += PlatformTests.__allTests()

XCTMain(tests)
