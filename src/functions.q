hline: `$20#"-"
show hline

// Define a test function.
show "3 + 2 * 5"
testfun: { [a;b] c:b+2*a; c }
testfun[5;3]
show hline

// Use a lambda to show perfect squares 1^2 thru 10^2.
show "First 10 squares"
show {x*x} 1 + til 10
show hline

// General-purpose round-to-nearest-x function: divide y by x,
// convert to long int, then multiply by x.
show "Round to nearest 10"
round: { y * "j"$ x % y }
show round[123.456;10]
show hline

// 'mix' makes a convex combination of two numbers.
// 'half_mix' is 'mix' with 0.5 pre-loaded as 3rd input.
show "Convex combinations"
mix: { (z*y) + (1-z)*x }
half_mix: mix[;;0.5]
mix[1;2;0.9]
half_mix[1;2]
show hline

// Use a projection of mix[] to make a moving average.
show "Exponential moving average of 1,2,3,4,5"
ewma: { mix[;;x] scan y }
ewma[0.9; 1 + til 5]
show hline

// Check time and space used by evaluating a function.
show "Time and space test"
\ts ewma (1+ til 1000000)
show hline

// Apply a 2-input function to consecutive elements in a list.
pin: 1 + til 5
show "{x+y} scan 1,2,3,4,5"
{x+y} scan pin
{x+y}\ [pin]
show "{x+y} over 1,2,3,4,5"
{x+y} over pin
{x+y}/ [pin]
show hline

// One of many ways to calculate factorials.
show "10!"
bang: { */ [1 + reverse til x] }
bang[10]
show hline

// Use /* or *\ to repeat some operation over a list.
show "100 times the combination on my luggage"
{100*x} each pin
100 */: pin
pin *\: 100
show hline

// Dot Apply: Expand a list to be used as arguments to a function.
show "Dot apply example"
{x+y*z} . 1,2,3
show hline
