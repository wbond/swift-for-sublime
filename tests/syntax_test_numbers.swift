/// SYNTAX TEST "Packages/Swift/Swift.sublime-syntax"

a = 100
/// ^^^ meta.number.integer.decimal constant.numeric.value

a = 0b100
/// ^^^^^ meta.number.integer.binary
/// ^^ constant.numeric.base
///   ^^^ constant.numeric.value

a = 0o160
/// ^^^^^ meta.number.integer.octal
/// ^^ constant.numeric.base
///   ^^^ constant.numeric.value

a = 0x160
/// ^^^^^ meta.number.integer.hexadecimal
/// ^^ constant.numeric.base
///   ^^^ constant.numeric.value

a = 0.0
/// ^^^ meta.number.float.decimal
/// ^^^ constant.numeric.value
///  ^ punctuation.separator.decimal

a = 1_000.0
/// ^^^^^^^ meta.number.float.decimal
/// ^^^^^^^ constant.numeric.value
///      ^ punctuation.separator.decimal

a = 0.0_e+1
/// ^^^^^^^ meta.number.float.decimal
/// ^^^^^^^ constant.numeric.value
///  ^ punctuation.separator.decimal

a = 0x160.0
/// ^^^^^^^ meta.number.float.hexadecimal
/// ^^ constant.numeric.base
///   ^^^^^ constant.numeric.value
///      ^ punctuation.separator.decimal

a = 0x160.0p-1_000
/// ^^^^^^^^^^^^^^ meta.number.float.hexadecimal
/// ^^ constant.numeric.base
///   ^^^^^^^^^^^^ constant.numeric.value
///      ^ punctuation.separator.decimal
