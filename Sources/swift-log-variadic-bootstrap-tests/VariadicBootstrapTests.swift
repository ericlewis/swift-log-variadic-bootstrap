import XCTest
import Logging

@testable import swift_log_variadic_bootstrap

class MockBackendOne: BaseMockBackend {}
class MockBackendTwo: BaseMockBackend {}

final class VariadicBootstrapTests: XCTestCase {
    func test_Bootstrap() throws {
      LoggingSystem.bootstrap(MockBackendOne.init, MockBackendTwo.init)

      let _ = Logger(label: "Testing")

      XCTAssertEqual(MockBackendOne.didCalledInitWithLabel, "Testing")
      XCTAssertEqual(MockBackendTwo.didCalledInitWithLabel, "Testing")
    }
}
