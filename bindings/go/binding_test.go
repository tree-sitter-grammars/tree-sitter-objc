package tree_sitter_objc_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_objc "github.com/tree-sitter-grammars/tree-sitter-objc/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_objc.Language())
	if language == nil {
		t.Errorf("Error loading Objective-C grammar")
	}
}
