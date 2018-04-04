import XCTest

extension EnvironmentTests {
    static let __allTests = [
        ("testEnvironment", testEnvironment),
    ]
}

extension PlatformTests {
    static let __allTests = [
        ("testRandom", testRandom),
        ("testRandomBuffer", testRandomBuffer),
        ("testRandomUniform", testRandomUniform),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EnvironmentTests.__allTests),
        testCase(PlatformTests.__allTests),
    ]
}
#endif
