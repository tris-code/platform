import XCTest

extension EnvironmentTests {
    static let __allTests = [
        ("testDynamicMemberLookup", testDynamicMemberLookup),
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
