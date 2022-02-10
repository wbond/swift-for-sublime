// SYNTAX TEST "Packages/Swift/Swift.sublime-syntax"

"foo"
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double
//^^^ string.quoted.double
//  ^ punctuation.definition.string.end


"foo \q"
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double
//^^^^^^ string.quoted.double
//     ^ punctuation.definition.string.end
//   ^ invalid.illegal


"foo 
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double
//^^^^ string.quoted.double
//   ^ invalid.illegal.unclosed-string

"foo \n"
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double
//^^^^^^ string.quoted.double
//     ^ punctuation.definition.string.end
//   ^^ constant.character.escape

"foo \u{0}"
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double
//^^^^^^^^^ string.quoted.double
//        ^ punctuation.definition.string.end
//   ^^^^^ constant.character.escape.unicode

"foo \u0"
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double
//^^^^^^^ string.quoted.double
//      ^ punctuation.definition.string.end
//   ^ invalid.illegal

"foo \(a + b)"
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double
//^^^^^^^^^^^^ meta.string
//^^^ string.quoted.double
//   ^^^^^^^^ meta.interpolation - string
//   ^^ punctuation.section.interpolation.begin.swift
//          ^ punctuation.section.interpolation.end.swift
//           ^ string.quoted.double punctuation.definition.string.end


#"foo"#
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double punctuation.definition.string.begin
//^^^^^ string.quoted.double
//   ^^ punctuation.definition.string.end


#"foo 
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double punctuation.definition.string.begin
//^^^^^ string.quoted.double
//    ^ invalid.illegal.unclosed-string

#"foo \#n"#
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double punctuation.definition.string.begin
//^^^^^^^^^ string.quoted.double
//       ^^ punctuation.definition.string.end
//    ^^^ constant.character.escape

#"foo \#u{0}"#
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double punctuation.definition.string.begin
//^^^^^^^^^^^^ string.quoted.double
//          ^^ punctuation.definition.string.end
//    ^^^^^^ constant.character.escape.unicode

#"foo \#(a + b) \()"#
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double punctuation.definition.string.begin
//^^^^^^^^^^^^^^^^^^^ meta.string
//^^^^ string.quoted.double
//    ^^^^^^^^^ meta.interpolation - string
//    ^^^ punctuation.section.interpolation.begin.swift
//            ^ punctuation.section.interpolation.end.swift
//              ^^^ string - meta.interpolation
//                 ^^ string.quoted.double punctuation.definition.string.end


"""
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double punctuation.definition.string.begin
//^ string.quoted.double punctuation.definition.string.begin
Test of multiline \
//                ^ punctuation.separator.continuation.line
   \n \u{0D}
// ^^ constant.character.escape
//    ^^^^^^ constant.character.escape.unicode

   \(a + b)
// ^^^^^^^^ meta.interpolation - string
// ^^ punctuation.section.interpolation.begin
//        ^ punctuation.section.interpolation.end
"""
// <- string.quoted.double punctuation.definition.string.end
 // <- string.quoted.double punctuation.definition.string.end
//^ string.quoted.double punctuation.definition.string.end

##"""
// <- string.quoted.double punctuation.definition.string.begin
 // <- string.quoted.double punctuation.definition.string.begin
//^^^ string.quoted.double punctuation.definition.string.begin
Test of multiline \
//                ^ punctuation.separator.continuation.line
   \##n \##u{0D}
// ^^^^ constant.character.escape
//      ^^^^^^^^ constant.character.escape.unicode

   \##(a + b)
// ^^^^^^^^^^ meta.interpolation - string
// ^^^^ punctuation.section.interpolation.begin
//          ^ punctuation.section.interpolation.end

   \(a + b)
// ^^^^^^^^ string - meta.interpolation

   \n \u{0A}
// ^^^^^^^^^ - constant.character.escape
"""##
// <- string.quoted.double punctuation.definition.string.end
 // <- string.quoted.double punctuation.definition.string.end
//^^^ string.quoted.double punctuation.definition.string.end
