hline: `$20#"-"
show hline

// Change display size to 20 rows and 1000 characters wide.
\c 20 128

// Ask the OS to show present working directory.
\pwd

// Send a command to the shell.
system "echo QHOME is $QHOME"
show hline

// Store a "handle" which points to file. Test if that file exists.
// Returns filename if true, empty list if false.
show "Does testfolder/testfile.q exist?"
h: `:testfolder/testfile.q
key h
show hline

// Show all existing namespaces. List contents of .q namespace.
show "Namespaces"
key `
show "Contents of .q namespace"
key `.q
show hline

// Change to the .q directory, show all functions there, and change back.
show "Functions in the .q directory"
\d .q
\f
\d .
show hline

// Show names of all tables, functions, and variables in current directory.
show "Tables"
\a
show "Functions"
\f
show "Variables"
\v
show hline

// Display all variable names as a column
show "Column of variables"
flip enlist system "v"
show hline

// Get current time (millisec).
// Get current timestamp (local time).
// Get current timestamp (GMT).
show "Right now in msec, local time, and GMT"
.z.T
.z.P
.z.p
show hline
