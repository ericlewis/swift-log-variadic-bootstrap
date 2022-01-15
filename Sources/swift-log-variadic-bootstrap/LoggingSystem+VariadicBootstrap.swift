import Logging

extension LoggingSystem {
  public static func bootstrap(_ handlers: (String) -> LogHandler...) {
    bootstrap { label in
      MultiplexLogHandler(handlers.map({ $0(label) }))
    }
  }

  public static func bootstrap(_ handlers: LogHandler...) {
    bootstrap { _ in
      MultiplexLogHandler(handlers)
    }
  }
}
