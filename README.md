# BearLibTerminal-Fortran
Fortran Binding for BearLibTerminal v0.15.7

BearLibTerminal is a flexible terminal-like window library which a lot of Roguelikes use. This is a Fortran binding for the library.

This wrapper is designed to work with BearLibTerminal v0.15.7

## Getting Started

1. Download BearLibTerminal binaries from the official website: http://foo.wyrd.name/en:bearlibterminal#download
2. Download the Fortran binding.
3. Compile the Fortran binding. (using gfortran: `gfortran -c BearLibTerminal.f90`)
4. Include the module in your Fortran code. `use bearlibterminal`

## Notes

* Strings

Fortran Strings do not work like C Strings. C Strings end with a null character (0x00). This means that when you call a 
BearLibTerminal function that requires a String, you will have to concatenate a null character onto the end. Like so:

```fortran
call terminal_print(0, 0, "Hello, world!"//CHAR(0))
```

* Non-ASCII Character / Wide Character Support

This binding does not currently support non-ascii characters in some subroutines and functions, like `terminal_print()`. You will have to use `terminal_put()` for unicode characters, like so:

```fortran
call terminal_put(0, 0, INT(X'2661'))
```

* Formatted Print

This binding does not currently support BearLibTerminal functions like `terminal_printf()`.
One should use Fortran's built-in `write(*,*)` statement to format strings.

## License

BearLibTerminal-Fortran is under the MIT License.
