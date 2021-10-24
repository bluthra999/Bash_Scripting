#!/usr/bin/env bash 
echo "======Menu===="
echo ""
echo "Enter  1 to check if a particular file has all the permission  "
echo "Enter  2 to check if all the files in the particular directory  have all the permission "
echo ""
echo "=============="

read -p "Enter your option: " option 


if [[ $option -eq 1 ]]
then
    read -p "Enter the file name: " file_name

        if [[ -r $file_name  &&  -w $file_name && -x $file_name ]]
        then 
            echo "Yes , $file_name has all the permissions"
        else 
             echo "No ,  $file_name doesn't has all the permissions"
        fi
else 

     read -p "Enter the  directory path: " dir_path
     cd $dir_path
    for each in $(ls)
    do
        if [[ -r $each  &&  -w $each && -x $each  ]]
        then 
            echo "Yes , $each  has all the permissions"
        else 
             echo "No , $each  doesn't has all the permissions"
        fi
    
    done

fi

