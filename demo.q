// Here are some simple examples of Q syntax.

// Change display size to 20 rows and 1000 characters wide
\c 20 128

// Give a command to the shell environment
system "echo QHOME is $QHOME"

// Make a string consisting of 20 dashes.
// Convert it to a symbol.
hline: 20#"-"
hline: `$hline
show hline

// Create a list of integers and cast them as floats
foo: "f"$(1 2 3 4 5)
show "The combination on my luggage is:"
show foo
show hline

// Here's another way to make the same list of floats:
// add 1.0 (floating point) to the integers [0 1 2 3 4]
show "Do foo and bar store the same values?"
bar: 1f + til 5
foo = bar
avg(foo=bar)
show hline

// Try comparing some floats to some integers.
// = tests for approximate numerical equivalence of each element.
// ~ (pronounced "match") tests if foo and bar are bitwise identical.
foo_int: "i"$foo
foo_int = foo
foo_int ~ foo
show hline

// UNDER CONSTRUCTION!