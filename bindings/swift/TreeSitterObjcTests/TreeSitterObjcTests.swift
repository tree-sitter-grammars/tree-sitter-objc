import XCTest
import SwiftTreeSitter
import TreeSitterObjc

final class TreeSitterObjcTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_objc())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Objective-C grammar")
    }
}
