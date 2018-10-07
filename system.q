hline: `$ 20#"-"

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
show "Namespaces and contents of .q namespace"
key `
key `.q
show hline

// Change to the .q directory, show all functions there, and change back.
\d .q
\f
\d .
show hline

// Show names of all tables, functions, and variables in current directory.
show "All tables, functions, and variables"
\a
\f
\v
show hline

// Display all variable names as a column
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
