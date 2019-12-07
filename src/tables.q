// Make a dictionary mapping times (HH:MM format) to floats.
// Overwrite a specific value in that dictionary.
// Append more items. Caution: No protection against duplicate keys.
show "Dictionary of prices"
t: 01:00 * til 3
x: 3 ? 1f
ts: t ! x
ts[01:00]: 0f
ts: ts, (03:00 + 01:00 * til 3) ! 3 ? 1f
show ts
show `

// Make a keyed table from a dictionaroy.
show "Table of bids"
bids: ( [Time: key ts]; Price: value ts )
show bids
show `

// Append a column to a table.
show "Table of donut bids"
donut: (count ts) ? `Cake`Glazed`BostonCream`Golden
donutbids: update Donut:donut from bids
show donutbids
show `

// Make the same table in a different way:
// Make a dictionary mapping names to lists,
// flip it, and use Time as a key column.
show "Another table of donut bids"
donutbids1: flip `Time`Price`Donut ! (key ts; value ts; donut)
donutbids1: `Time xkey donutbids1
show donutbids1
show `

// Compare tables.
show "Which rows of tables are equal?"
show donutbids = donutbids1
show "Are tables identical?"
show donutbids ~ donutbids1
show `

// Drop keys from a table.
show "Un-keyed table"
tbl: 0! donutbids
show tbl
show `

// Change column order.
show "New column order"
tbl: `Donut`Price`Time xcols tbl
show tbl
show `

// Append a new column derived from the old columns.
show "Is it topologically a donut?"
tbl: update Genus: Donut <> `BostonCream from tbl
show tbl
show `

// Horizontal-concatenate 2 tables.
show "How big and old are the donuts?"
N: count tbl
bigtbl: tbl ^ ([] Kg: N ? 0.5f; Age: N ? 12:00)
show bigtbl
show `

// Extract 2 columns.
show "Selected columns"
show `Price`Age # bigtbl
show `
