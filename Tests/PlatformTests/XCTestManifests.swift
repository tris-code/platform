import XCTest

extension EnvironmentTests {
    static let __allTests = [
        ("testEnvironment", testEnvironment),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EnvironmentTests.__allTests),
    ]
}
#endif
