#! /usr/bin/bash
<< com
read -p "Enter the numerator: "  base
read -p "Enter the denominator: " power
ans=$(bc<<<"scale=3;$base*$power")
echo  -E "The answer is $ans" 
com

<< com
#!/usr/bin/env bash 
echo "======Menu===="
echo ""
echo "Enter  1 to check if a particular file has all the permission  "
echo "Enter  2 to check if all the files in the particular directory  have all the permission "
echo ""
echo "=============="

read -p "Enter the  directory path: " dir_path
if  [[ -d $dir_path ]]
then
    short_name=$(basename $dir_path)
    echo short_name
else 
    short_name=$(basename $dir_path)
    echo "$short_name doesn't exist"
fi
com
python
