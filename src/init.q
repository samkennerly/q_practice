// Introduction to Q

// Use 0N! to show values for debugging.
show "Debug statements"
5 + 0N! 10 * 2

// Make a string (char list) of 20 dashes.
hline: 20 # "-"
show "What a dashing string!"
show hline

// Convert `hline to a symbol.
hline: ` $ hline
show "What a dashing symbol!"
show hline

// Delete `hline.
show "`hline, are you there?"
delete hline from `.
show `hline in system "v"

// Define a list of ints, redefine it in-place, and convert back to ints.
coin: 0,1,2
coin -: avg coin
coin: "i" $ coin
show "10 coin flips:"
show 10 ? coin

// Make a list of integers and a list of floats.
pinint: 1 + til 5
pinfloat: "f" $ pinint
show "The combination on my luggage is"
show pinint
show "As floating-point numbers, the combination is:"
show pinfloat
show "Are all list elements equal?"
show min pinint = pinfloat
show "Are the lists identical?"
show pinint ~ pinfloat

// Make a list of strings. Count length of each string.
show "I'll be there for yooooou"
friend: ("Alice";"Bob";"Carol")
show friend
show "How long are their names?"
show count each friend

// Convert list of symbols to list of strings.
// Join strings with a space. Convert result to symbol.
show "How do you feel about Q, computer?"
show ` $ " " sv string `I`have`no`feelings.

// Crudely approximate a standard normal sample by adding
// 12 samples uniform on [0,1] and subtracting 6.
show "Sample of not-quite-uniform random float"
show -6f + sum 12 ? 1f

// Deal some cards by sampling without replacement.
cards: ` $ "AKQJT98765432" cross "hcds"
show "Wrong again, Albert."
-5 ? cards

// Use "scalar conditional operator" to make a switch statement.
// Format: if; then; elif; then; ... ; else
show "Scalar conditional operator test"
$[5 = 2+2; "I love Big Brother"; 1 = 0; "Up is down"; "NOPE"]
