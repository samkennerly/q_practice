# q_practice

Q can be difficult.

![mariachi band](q.jpeg)

## abstract

Example scripts written in [q], the query language for [kdb+] databases.

[q]: https://en.wikipedia.org/wiki/Q_(programming_language_from_Kx_Systems)
[kdb+]: https://kx.com/

## basics

1. [Clone] this repo or [use it as a template].
2. Open a [terminal] and `cd` to this folder.
3. Start `q` and enter `\l src/init.q` to load [src/init.q].

[Clone]: https://help.github.com/articles/cloning-a-repository/
[use it as a template]: https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template
[terminal]: https://en.wikipedia.org/wiki/Command-line_interface
[src/init.q]: src/init.q

## contents

### [src/init.q](src/init.q)

Comments, lists, symbols, functions, `show`, `delete`, `each`, `0N!`, `?`.

### [src/functions.q](src/functions.q)

Functions, [iterators], [lambdas], [projections], [dot apply], etc.

[lambdas]: https://code.kx.com/v2/basics/function-notation/
[iterators]: https://code.kx.com/v2/ref/iterators/
[projections]: https://code.kx.com/v2/style/projection/
[dot apply]: https://code.kx.com/v2/ref/apply/

### [src/normrand.q](src/normrand.q)

Pseudorandom normal samples with a [Box-Muller transform] similar to [qtips/stat.q].

[Box-Muller transform]: https://en.wikipedia.org/wiki/Box%E2%80%93Muller_transform
[qtips/stat.q]: https://github.com/psaris/qtips/blob/master/stat.q

### [src/system.q](src/system.q)

System commmands, navigation, file handles, current time.

### [src/tables.q](src/tables.q)

Example [dictionaries], [tables], and [keys].

[dictionaries]: http://code.kx.com/q4m3/5_Dictionaries/
[tables]: http://code.kx.com/q4m3/8_Tables/
[keys]: http://code.kx.com/q4m3/8_Tables/#84-primary-keys-and-keyed-tables

### [test/all](test/all)

One script to run them all and to `test/output` write them.

## dependencies

- [q 3.4+] 64-bit or 32-bit version

[q 3.4+]: https://code.kx.com/v2/

## examples

Create an [alias] in a [startup file] to run q with [rlwrap].
```sh
export QARCH='m32'
export QHOME="$HOME/q"
alias q='rlwrap --complete-filenames --remember "$QHOME/$QARCH/q"'
```

Run a `q` script and interact with it.
```sh
q src/tables.q
```

Run a `q` script and close the interpreter.
```sh
q src/tables.q < /dev/null
```

Run a `q` script and save [STDOUT] to a file.
```sh
q src/init.q > test/output/init.txt
```

[alias]: https://en.wikipedia.org/wiki/Alias_(command)
[startup file]: https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html
[rlwrap]: https://linux.die.net/man/1/rlwrap

## faq

### Where else can I find Q tutorials?

  - Kx [reference card](https://code.kx.com/q/ref/card/)
  - Kx [list of repos](https://code.kx.com/v2/github/)
  - [Q Tips](https://github.com/psaris/qtips)
