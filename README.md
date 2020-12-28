# Raster

![CI](https://github.com/alexito4/Raster/workflows/CI/badge.svg)
![Mac](https://img.shields.io/badge/platforms-mac-brightgreen.svg?style=flat)

Rasterize a SwiftUI view into an image.

![testExample.1](image.png)

# How to use

```swift
import Raster

let view = ... any SwiftUI view
let image = view.rasterize(at: size)
```

# Installation

```swift
dependencies: [
   .package(url: "https://github.com/alexito4/Raster.git", from: "0.0.1")
],
...
.target(
    dependencies: [
        "Raster"
    ],
),
```

# Author

Alejandro Martinez | http://alejandromp.com | [@alexito4](https://twitter.com/alexito4)