#!/bin/bash
# Author : Ruijiang Ma
# Date: 09/27/2019

echo  "Enter a file name: " 
read fileName
echo "Enter a regular expression: "
read expression
grep $expression $fileName

echo  "Now output the number of phone numbers."
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt
#using the code above to match phone number pattern xxx-xxx-xxxx, where x is an integer from 0-9.
#using -c to count the number of matching.


echo  "Now output the number of email address."
grep -c '^[a-zA-Z0-9]\+@[a-zA-Z0-9]\+\.[com]' regex_practice.txt
#using the code above to match string that begin with [a to z A to Z 0 to 9]
# plus @ [a to z A to Z 0 to 9], plus .com.
#using -c to count the number of matching.

echo  "Now output the list of all the phone numbers in the "303" area code."
grep -o '[303]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt
#using the code above to match phone number pattern 303-xxx-xxxx, where x is an integer from 0-9.
#using -o to output the matching entries.


echo  "Now store the list of all the emails from geocities.com in a new file named email_results.txt."
grep  "@geocities.com" regex_practice.txt >> email_results.txt



