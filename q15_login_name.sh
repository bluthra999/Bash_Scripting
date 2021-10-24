#! /usr/bin/env bash

read -p "Enter an email address: " email

grep -e "[a-zA-Z0-9._]\+@[a-zA-Z]\+.[a-zA-Z]\+" email.txt > user_id.txt # extract email from the email and pate it in user_id

if grep -ic $email user_id.txt
then 
    echo -E "Email  accepted."
else 
     echo -E "Entered email is invalid."
    
fi
