// Send a command to the shell.
system "echo QHOME is $QHOME"

// Define a file handle. Write a list of strings to that file.
// Note: key returns empty list if file does not exist.
spampath: `:test/output/spam.txt
spampath 0: 23 # enlist "spam"
"Saved some spam to ", string key spampath

// Change display size to 20 rows and 1000 characters wide.
\c 20 128

// Ask the OS to show present working directory.
"You are here:"
\pwd

// Explore current directory
"Namespaces:"
`
"Functions: "
\f
"Tables: "
\a
"Variables: "
\v
"Variables as a column:"
flip enlist system "v"


// Explore other directories
"Visit the .q directory"
\d .q
"What's in the .q directory?"
\f
"Return to root"
\d .
"Explore .q without leaving home"
key `.q

// Get current time (millisec).
// Get current timestamp (local time).
// Get current timestamp (GMT).

// What time is it?
"GMT is"
.z.p
"GMT in old datetime format"
.z.t
"Local time is"
.z.P
"Local time in old datetime format"
.z.T
