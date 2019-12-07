// Define a namespace (a.k.a. directory, context).
\d .normrand

pi: acos -1

// Convert (N ? 1f) -> N standard normal random samples.
// Raise error if input has an odd number of elements.
boxmuller: { [x]
  x: "f" $ x;
  n: count[x];
  half: n div 2;
  if[n mod 2; '`length];
  rad: sqrt -2f * log half # x;
  ang: (2 * pi) * neg[half] # x;
  (rad * cos ang), (rad * sin ang)
  }

// Generate n samples from normal distribution with mean mu and stdev sigma.
samples: { [n; mu; sigma]
  mu + sigma * n # boxmuller $[n mod 2; n + 1; n] ? 1f
  }

test: { [ ]
  vals: samples[10000; -10; 3];
  mu: avg vals; sigma: sqrt var vals;
  if [abs[10 + mu] > 0.1; show raze "Mean is ", string mu, " (should be -10)"];
  if [abs[-3 + sigma] > 0.1; show raze "Stdev is ", string sigma, " (should be 3)"];
  }

test[]
