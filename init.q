// Make a character vector of 20 dashes. Convert it to a symbol.
hline: 20#"-"
show hline

// Convert 'hline' from string to symbol.
hline: `$ hline
show hline

// Create another variable and delete it.
zz: 10
delete zz from `.
show hline

// Define a list, then redefine it in-place to have mean 0.
// Caution: this converts our integers to floats.
coin: 0,1,2
coin -: avg coin
show "10 coin flips:"
show 10 ? coin
show hline

// Make a list showing the combination on my luggage.
// Also make a floating-point version.
show "The combination on my luggage:"
pin: 1 + til 5
show pin
fpin: "f"$ pin
show fpin
show hline

// "Numerically equal" is not the same as "bitwise identical".
show "Which list elements are equal?"
show pin = fpin
show "Are the lists identical?"
show pin ~ fpin
show hline

// Use 0N! to show values for debugging.
show "Debug statements:"
5 + 0N! 10 * 2
show hline

// Make a list of strings. Count length of each string.
show "Friends:"
friend: ("Alice";"Bob")
show friend
count each friend
show hline

// Convert list of symbols to list of strings.
// Convert that list to a single string with spaces between words.
// Convert that string to a symbol.
show "How do you feel about Q, computer?"
show `$ " " sv string `I`have`no`feelings.
show hline

// Crudely approximate a standard normal sample by adding
// 12 samples uniform on [0,1] and subtracting 6.
show "Random sample:"
show -6f + sum 12 ? 1f
show hline

// Deal some cards by sampling without replacement.
ranks: "AKQJT98765432"
suits: "hcds"
cards: `$ ranks cross suits
deal: { (neg x) ? cards }
show "Wrong again, Albert."
deal[5]
show hline

// Use "scalar conditional operator" to make a switch statement.
// Format: if; then; elif; then; ... ; else
show "Scalar conditional operator test"
$[5 = 2+2; "I love Big Brother"; 1 = 0; "Up is down"; "NOPE"]
