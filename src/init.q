// Introduction to Q

// Use 0N! to values for debugging.
"Debug statements"
5 + 0N! 10 * 2

// Make a string (char list) of 20 dashes.
hline: 20 # "-"
"What a dashing string!"
hline

// Convert `hline to a symbol.
hline: ` $ hline
"What a dashing symbol!"
hline

// Delete `hline.
"`hline, are you there?"
delete hline from `.
`hline in system "v"

// Define a list of ints, redefine it in-place, and convert back to ints.
coin: 0,1,2
coin -: avg coin
coin: "i" $ coin
"10 coin flips:"
10 ? coin

// Make a list of integers and a list of floats.
pinint: 1 + til 5
pinfloat: "f" $ pinint
"The combination on my luggage is"
pinint
"As floating-point numbers, the combination is:"
pinfloat
"Are all list elements equal?"
min pinint = pinfloat
"Are the lists identical?"
pinint ~ pinfloat

// Make a list of strings. Count length of each string.
"I'll be there for yooooou"
friend: ("Alice";"Bob";"Carol")
friend
"How long are their names?"
count each friend

// Convert list of symbols to list of strings.
// Join strings with a space. Convert result to symbol.
"How do you feel about Q, computer?"
` $ " " sv string `I`have`no`feelings.

// Crudely approximate a standard normal sample by adding
// 12 samples uniform on [0,1] and subtracting 6.
"Sample of not-quite-uniform random float"
-6f + sum 12 ? 1f

// Deal some cards by sampling without replacement.
cards: ` $ "AKQJT98765432" cross "hcds"
"Wrong again, Albert."
-5 ? cards

// Use "scalar conditional operator" to make a switch statement.
// Format: if; then; elif; then; ... ; else
"Scalar conditional operator test"
$[5 = 2+2; "I love Big Brother"; 1 = 0; "Up is down"; "NOPE"]
