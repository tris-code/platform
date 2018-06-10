import XCTest

extension EnvironmentTests {
    static let __allTests = [
        ("testDynamicMemberLookup", testDynamicMemberLookup),
        ("testEnvironment", testEnvironment),
        ("testValues", testValues),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EnvironmentTests.__allTests),
    ]
}
#endif
