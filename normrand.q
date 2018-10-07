// Define a namespace (also known as "directory" or "context").
\d .normrand

// Box-Muller transform from Q Tips.
// Input must have an even number of elements.
bm:{
    if[count[x] mod 2;'`length];
	x:2 0N#x;
	r:sqrt -2f*log first x;
	theta:2f*acos[-1f]*last x;
	x: r*cos theta;
	x,:r*sin theta;
 	x }

// Generate normally-distributed pseudorandom numbers.
// N: number of samples
// mu: mean of samples
// sigma: standard deviation of samples
samples:{ [N;mu;sigma]
    is_odd: mod[N; 2];
    if[ is_odd; N+:1 ];
    randos: bm N ? 1f;
    if[ is_odd; randos: -1_randos ];
    mu + sigma * randos }
