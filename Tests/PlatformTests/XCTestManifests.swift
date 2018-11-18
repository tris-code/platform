#if !canImport(ObjectiveC)
import XCTest

extension CPUTests {
    // DO NOT MODIFY: This is autogenerated, use: 
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__CPUTests = [
        ("testCPUCount", testCPUCount),
        ("testCPUTotalCount", testCPUTotalCount),
    ]
}

extension EnvironmentTests {
    // DO NOT MODIFY: This is autogenerated, use: 
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EnvironmentTests = [
        ("testDynamicMemberLookup", testDynamicMemberLookup),
        ("testEnvironment", testEnvironment),
        ("testValues", testValues),
    ]
}

extension SystemTests {
    // DO NOT MODIFY: This is autogenerated, use: 
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__SystemTests = [
        ("testGenericPointer", testGenericPointer),
        ("testInt", testInt),
        ("testOpaquePointer", testOpaquePointer),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CPUTests.__allTests__CPUTests),
        testCase(EnvironmentTests.__allTests__EnvironmentTests),
        testCase(SystemTests.__allTests__SystemTests),
    ]
}
#endif
