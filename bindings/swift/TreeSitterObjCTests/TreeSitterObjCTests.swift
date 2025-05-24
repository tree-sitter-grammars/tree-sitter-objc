import XCTest
import SwiftTreeSitter
import TreeSitterObjC

final class TreeSitterObjCTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_objc())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Objective-C grammar")
    }
}
