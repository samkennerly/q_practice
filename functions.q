hline: `$ 20#"-"

// Define a test function.
testfun: { [a;b] c:b+2*a; c }
show "Test function:"
testfun[5;2]
show hline

// Use a lambda to show perfect squares 1^2 thru 10^2.
show "First 10 squares:"
show {x*x} 1 + til 10
show hline

// General-purpose round-to-nearest-x function: divide y by x,
// convert to long int, then multiply by x.
show "Rounding function"
round: { x * "j"$ y % x }
show round[123.456;10]
show hline

// 'mix' makes a convex combination of two numbers.
// 'half_mix' is 'mix' with 0.5 pre-loaded as 3rd input.
show "Convex combinations:"
mix: { (z*y) + (1-z)*x }
half_mix: mix[;;0.5]
mix[10;20;0.9]
half_mix[10;20]
show hline

// Use a projection of mix[] to make an exponential moving average.
show "Exponential moving average of 1,2,3,4,5"
ewma: { mix[;;x] scan y }
ewma[0.9; 1 + til 5]
show hline

// Check time and space used by evaluating a function.
show "Time and space test"
\ts ewma (1+ til 1000000)
show hline

// Apply a 2-input function to consecutive elements in a list.
show "Try scan[] and over[] on the list 1,2,3,4,5"
pin: 1 + til 5
{x+y} scan pin 		// return list of all results
{x+y}\ [pin]		// alternate syntax for 'scan'
{x+y} over pin 		// only return final result
{x+y}/ [pin] 		// alternate syntax for 'over'
show hline

// One of many ways to calculate factorials.
show "Naive factorials"
factorial: { */ [1 + reverse til x] }
factorial[4]
show hline

// Use /* or *\ to repeat some operation over a list.
show "10 times the combination on my luggage"
{10*x} each pin
10 */: pin
pin *\: 10
show hline

// Dot Apply: Expand a list to be used as arguments to a function.
show "Dot apply example"
{x+y*z} . 1,2,3
show hline
