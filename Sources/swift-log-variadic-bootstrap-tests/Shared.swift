import Logging

class BaseMockBackend: LogHandler {
  static var didCalledInitWithLabel: String? = nil

  subscript(metadataKey key: String) -> Logger.Metadata.Value? {
    get { self.metadata[key] }
    set { self.metadata[key] = newValue }
  }

  var metadata: Logger.Metadata = .init()
  var logLevel: Logger.Level = .info
  var label: String

  init(label: String) {
    self.label = label
    Self.didCalledInitWithLabel = label
  }
}
