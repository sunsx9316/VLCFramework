# VLCKit

基于官方 VLCKit 编译的 Swift Package Manager 分发版，底层使用 libVLC 4.0.0。

## 支持的平台

- macOS 10.13+
- iOS 12.0+
- tvOS 12.0+

## 安装

在 `Package.swift` 中添加依赖：

```swift
dependencies: [
    .package(url: "https://github.com/sunsx9316/VLCKit.git", from: "1.0.0")
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "VLCKit", package: "VLCKit")
        ]
    )
]
```

## 使用

```swift
import VLCKit

let player = VLCMediaPlayer()
let media = VLCMedia(url: URL(string: "https://example.com/video.mp4")!)
player.media = media
player.play()
```
