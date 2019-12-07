// Custom print function: show, but with newlines.
print: {-1 .Q.s x;}
show "Hello, World!"
print "Hello, World!"

// Define a function several different ways.
"Pythagorean party:"
pythagoras: { sqrt (x*x)+(y*y) }
"The long side is: ", string pythagoras[3; 4]
pythagoras: { [a; b] sqrt (a*a)+(b*b) }
"The long side is: ", string pythagoras[3; 4]
pythagoras: { [a; b] cc: (a*a)+(b*b); sqrt cc }
"The long side is: ", string pythagoras[3; 4]

// Map a lambda to a list
"Perfect squares:"
{x*x} til 17

// Make a convex combination of two numbers.
mix: { (z*y)+(1-z)*x }
"Mostly 1, with a little 10 mixed in"
mix[1; 10; 0.1]

// Project a function (pre-apply some inputs)
midpoint: mix[ ; ; 0.5]
"Halfway between 10 and 20."
midpoint[10; 20]

// Use projects to make moving averages.
ewma: { mix[;;x] scan y }
ewma92: ewma[0.92; ]
"Exponential moving average of the combination on my luggage"
ewma92 1 + til 5

// Check time and space used by evaluating a function.
"Time (ms) and space (bytes)"
\ts ewma (1+ til 1000000)

// Apply a 2-input function to consecutive elements in a list.
"{x+y} scan the combination on my luggage."
{x+y} scan 1,2,3,4,5
"{x+y} over the combination on my luggage."
{x+y} over 1,2,3,4,5

// One of many ways to calculate factorials.
bang: { */ [1 + reverse til x] }
"10! is"
bang[10]

// Repeat an operation over a list.
luggage: 1 + til 5
"100 times the combination on my luggage"
100 */: luggage
"100 times the combination on my luggage"
luggage *\: 100

// Dot Apply: Expand a list to be used as arguments to a function.
"1 + 2 * 3"
{x+y*z} . 1,2,3
