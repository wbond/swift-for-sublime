/// SYNTAX TEST "Packages/Swift/Swift.sublime-syntax"

// Testing!
/// <- comment.line punctuation.definition.comment.begin
 /// <- comment.line punctuation.definition.comment.begin
  /// <- comment.line
///^^^^^^^^^ comment.line

/*
/// <- comment.block punctuation.definition.comment.begin
 /// <- comment.block punctuation.definition.comment.begin

   Nested multiline comments!
   /*
///^^ comment.block comment.block punctuation.definition.comment.begin
   */
///^^ comment.block comment.block punctuation.definition.comment.end

*/
/// <- comment.block punctuation.definition.comment.end
 /// <- comment.block punctuation.definition.comment.end
