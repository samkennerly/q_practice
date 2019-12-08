OUTPUT: "test/output/"

// Create a {minute: float} dictionary.
t: 01:00 * til 8
x: count[t] ? 1f
ts: t ! x
"Here is a dictionary:"
show ts

// Update a dict. No protection against duplicate keys!
ts[01:00]: 0f
"I have altered the dict."
show ts

// Create a keyed table from the dictionary. Append a new column.
bids: ( [time: key ts]; price: value ts )
donut: (count ts) ? `Cake`Glazed`BostonCream`Golden
bids: update donut:donut from bids
"Here is a table:"
show bids

// Drop keys from a table
bids: 0! bids
"Here is the same table without keys:"
show bids

// Create an unkeyed table by flipping a dict of lists.
"Here is (hopefully) the same table:"
bids1: flip `time`price`donut ! (key ts; value ts; donut)
show bids1
"Are the tables equal?"
show min bids = bids1
"Are the tables identical?"
show bids ~ bids1

// Append more columns. Sort columns.
nrows: count[bids]
tbl: update genus: donut <> `BostonCream from bids
tbl: tbl ^ ([] mass: nrows ? 0.5f; age: nrows ? 12:00)
tbl: (asc cols tbl) xcols tbl
"This new table has donuts *and* topology."
show tbl

// Run some queries
"Get a column"
show tbl[`donut]
"Get more columns"
show `donut`mass # tbl
"Use q-sql select to generate a column"
show select i, donut, holemass: 0.2 * genus * mass from tbl
"Pretend to be SQL some more"
show select i, donut, price from tbl where (price > 0) & (genus = 0)

// Show metadata
show meta tbl

// Save table to CSV format
path: `$ OUTPUT, "tbl.csv"
raze "Save ", string path
save path

// Read CSV and compare.
types: upper (0! meta tbl)[`t]
delims: enlist ","
raze "Read ", string path
tbl1: (types; delims) 0: path
show tbl1
"Do they match?"
show tbl = tbl1
