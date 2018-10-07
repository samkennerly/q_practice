# q_practice

Quick reference for the
[Q language](https://en.wikipedia.org/wiki/Q_(programming_language_from_Kx_Systems)).  
See the
[kx reference card](https://code.kx.com/q/ref/card/)
for a more comprehensive reference.  
See the
[Q Tips](https://github.com/psaris/qtips)
book by Nick Psaris for a thorough tutorial.

## quickstart

1. [Clone this repository](https://help.github.com/articles/cloning-a-repository/) to any folder on your machine.
2. Open a terminal and `cd` to wherever you cloned this repository.
3. Start Q and enter `\l init.q` to run the [init.q](init.q) script.

## scripts

[init.q](init.q)  
Comments, lists, symbols, functions, `show`, `delete`, `each`, `0N!`, `?`. 

[functions.q](functions.q)  
Functions,
[lambdas](https://en.wikipedia.org/wiki/Anonymous_function),
[adverbs](https://code.kx.com/q/ref/adverbs/),
[projections](https://code.kx.com/q/ref/syntax/#projection),
[dot apply](https://code.kx.com/wiki/Reference/DotSymbol),
`over`, `scan`.

[normrand.q](normrand.q)  
Pseudorandom normal samples with a
[Box-Muller transform](https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform)
from
[qtips/stat.q](https://github.com/psaris/qtips/blob/master/stat.q).

[system.q](system.q)  
System commmands, navigation, file handles, current time.

[tables.q](tables.q)  
Example
[dictionaries](http://code.kx.com/q4m3/5_Dictionaries/),
[tables](http://code.kx.com/q4m3/8_Tables/),
and
[keys](http://code.kx.com/q4m3/8_Tables/#84-primary-keys-and-keyed-tables).
