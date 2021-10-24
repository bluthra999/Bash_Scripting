#!/usr/bin/env bash 
sort -k2n  users.txt | uniq
echo ""
echo -E  "Number of unique fields in the file is `sort -k2n users.txt | uniq  | wc -l`."


<< exp
-n : Makes the program sort according to numerical value
-k opts: Sort data / fields using the given column number. For example, the option -k 2 made the program sort using the second
column of data. The option -k 3,3n -k 4,4n sorts each column. First
it will sort 3rd column and then 4th column.
exp

