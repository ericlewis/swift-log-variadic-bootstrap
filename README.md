# SwiftLogVariadicBootstrap
[![Build & Test](https://github.com/ericlewis/swift-log-variadic-bootstrap/actions/workflows/ci.yml/badge.svg)](https://github.com/ericlewis/swift-log-variadic-bootstrap/actions/workflows/ci.yml)

Variadic bootstrap function for [SwiftLog](https://github.com/apple/swift-log). 

Basically bridges `LoggingSystem.bootstrap()` arguments to a `MultiplexLogHandler`.

## Getting Started

### Adding the dependency

`SwiftLogVariadicBootstrap` is designed for Swift 5. To use the handler, you need to declare your dependency in your `Package.swift`:

```swift
.package(url: "https://github.com/ericlewis/swift-log-variadic-bootstrap.git", from: "1.0.0"),
```

and to your application/library target, add `"VariadicBootstrap"` to your `dependencies`, e.g. like this:

```swift
.target(name: "BestExampleApp", dependencies: [
    .product(name: "VariadicBootstrap", package: "swift-log-variadic-bootstrap")
],
```

### Example

It works exactly like [the existing bootstrap function](https://github.com/apple/swift-log#default-logger-behavior)
but it is variadic!

#### Allow the labels to be passed in via bootstrap
```swift
import Logging
import VariadicBootstrap
import ExampleLogBackend1
import ExampleLogBackend2

LoggingSystem.bootstrap(ExampleLogBackend1.init, ExampleLogBackend2.init)

```

#### Set custom labels per backend
```swift
import Logging
import VariadicBootstrap
import ExampleLogBackend1
import ExampleLogBackend2

let backend1 = ExampleLogBackend1(label: "FirstBackend")
let backend2 = ExampleLogBackend2(label: "SecondBackend")

LoggingSystem.bootstrap(backend1, backend2)

```

## License

This library is released under the MIT license. See [LICENSE](LICENSE.md) for details.
