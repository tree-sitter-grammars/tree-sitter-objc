// swift-tools-version:5.3

import Foundation
import PackageDescription

var sources = ["src/parser.c"]
if FileManager.default.fileExists(atPath: "src/scanner.c") {
    sources.append("src/scanner.c")
}

let package = Package(
    name: "TreeSitterObjC",
    products: [
        .library(name: "TreeSitterObjC", targets: ["TreeSitterObjC"]),
    ],
    dependencies: [
        .package(name: "SwiftTreeSitter", url: "https://github.com/tree-sitter/swift-tree-sitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterObjC",
            dependencies: [],
            path: ".",
            sources: sources,
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterObjCTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterObjC",
            ],
            path: "bindings/swift/TreeSitterObjCTests"
        )
    ],
    cLanguageStandard: .c11
)
