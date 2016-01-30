// Create a global variable and delete it
zz: 10
delete zz from `.

// Define a list, then redefine it in-place to have mean 0.
// (Note that this converts our integers to floats.)
coin: 0,1,2
coin -: avg coin
show coin

// Make a character vector of 20 dashes. Convert it to a symbol.
hline: `$ 20#"-"
show hline

// Make a list showing the combination on my luggage.
// Show its type (should be "long") and make a floating-point version.
// "Numerically equal" is not the same as "bitwise identical"
pin: 1 + til 5
show pin
show type pin
fpin: "f"$ 1 + til 5
show fpin
show pin = fpin
show pin ~ fpin
show hline

// Use 0N! to show values for debugging
5 + 0N! 10 * 2
show hline

// Make a list of strings. Count length of each string.
show "Friend list"
friend: ("Alice";"Bob")
show friend
count each friend
show hline

// Convert list of symbols to list of strings.
// Convert that list to a single string with spaces between words.
// Convert that string to a symbol.
show "What do you think about Q, computer?"
show `$ " " sv string `I`hate`Q`so`much 
show hline

// Crudely approximate a standard normal sample by
// summing 12 samples uniform on [0,1] and subtracting 6
normal_sample: -6f + sum 12 ? 1f

// Deal some cards by sampling without replacement
ranks: "AKQJT98765432"
suits: "hcds"
cards: `$ ranks cross suits 
deal: { (neg x) ? cards }
deal[5]
show hline

// Use "scalar conditional operator" to make a switch statement.
// Format: if; then; elif; then; ... ; else
show "Scalar conditional operator test"
$[5 = 2+2; "I love Big Brother"; 1 = 0; "Up is down"; "NOPE"]