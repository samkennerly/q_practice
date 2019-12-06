# q_practice

Q can be difficult.

![mariachi band](q.jpeg)

## abstract

Tutorial scripts written in [q], the query language for [kdb+] databases.

[q]: https://en.wikipedia.org/wiki/Q_(programming_language_from_Kx_Systems)
[kdb+]: https://kx.com/

## basics

1. [Clone] this repo or [use it as a template].
2. Open a [terminal] and `cd` to this folder.
3. Start `q` and enter `\l init.q` to run the [init.q] script.

[Clone]: (https://help.github.com/articles/cloning-a-repository/
[use it as a template]: https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template
[terminal]: https://en.wikipedia.org/wiki/Command-line_interface
[init.q]: init.q

## contents

### [init.q](init.q)

Comments, lists, symbols, functions, `show`, `delete`, `each`, `0N!`, `?`.

### [functions.q](functions.q)

Functions, [lambdas], [adverbs], [projections], [dot apply], `over`, `scan`.

[lambdas]: https://en.wikipedia.org/wiki/Anonymous_function
[adverbs]: https://code.kx.com/q/ref/adverbs/
[projections]: https://code.kx.com/q/ref/syntax/#projection
[dot apply]: https://code.kx.com/wiki/Reference/DotSymbol

### [normrand.q](normrand.q)

Pseudorandom normal samples with a [Box-Muller transform] from [qtips/stat.q].

[Box-Muller transform]: https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform
[qtips/stat.q]: https://github.com/psaris/qtips/blob/master/stat.q

### [system.q](system.q)

System commmands, navigation, file handles, current time.

### [tables.q](tables.q)

Example [dictionaries], [tables], and [keys].

[dictionaries]: http://code.kx.com/q4m3/5_Dictionaries/
[tables]: http://code.kx.com/q4m3/8_Tables/
[keys]: http://code.kx.com/q4m3/8_Tables/#84-primary-keys-and-keyed-tables

## dependencies

- [q 3.4+] 64-bit or 32-bit version

[q 3.4+]: https://code.kx.com/v2/

## faq

### Where else can I find Q tutorials?

  - Kx [reference card](https://code.kx.com/q/ref/card/)
  - Kx [list of repos](https://code.kx.com/v2/github/)
  - [Q Tips](https://github.com/psaris/qtips)
