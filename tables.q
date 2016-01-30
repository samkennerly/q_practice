hline: `$ 20#"-"

// Make a dictionary mapping times (HH:MM format) to floats
t: 	01:00 * til 6
x: 	6 ? 1f
ts: t ! x

// Overwrite a specific value in that dictionary.
// Append some more obvservations (caution: no protection against duplicate keys).
ts[01:00]: 0f
ts: ts, (06:00 + 01:00 * til 6) ! 6 ? 1f
show "Time series as a dictionary:"
show ts
show hline

// Make a keyed table from the timeseries
show "Time series as a table:"
ktbl: ( [Time: key ts]; Price: value ts )

// Append a column to the table
donut_type: (count tbl) ? `Cake`Glazed`BostonCream`Gold
ktbl: update DonutType:donut_type from ktbl
show ktbl
show hline

// Make the same table in a different way:
// Make a dictionary mapping names to lists, then flip it,
// then use Time as a key column.
ktbl2: flip `Time`Price`DonutType ! (key ts; value ts; donut_type)
ktbl2: `Time xkey tbl2
show "Is ktbl2 the same as ktbl?"
show ktbl ~ ktbl2
show ktbl = ktbl2
show hline

// Drop keys from a table
show "Un-keyed version of table:"
tbl: 0! ktbl
show tbl
show hline

// Rearrange columns
show "Re-order columns"
tbl: `Time`DonutType xcols tbl
show tbl
show hline

// Append a new column derived from the old columns
show "What kind of donut is it?"
tbl: update HasHole: DonutType <> `BostonCream from tbl
show tbl
show hline

// Horizontal-concatenate 2 tables
show "How big and old are the donuts?"
N: count tbl
bigtbl: tbl ^ ([] Kg: N ? 0.5f; Age: N ? 12:00)
show bigtbl
show hline

// Extract 2 columns
show "Just show me price and age:"
show `Price`Age # bigtbl