#!/usr/bin/env bash
# file: guessinggame.sh
# author: Thom Wescott
# date: 2017 Nov 17
#
# simple guessing game for final assignement 

guess=0
attempts=0
totfile=$(ls | wc -w)

echo "Guess how many non-hidden files are in this directory: "
read guess

while [[ $guess -ne $totfile ]]
do
  if [[ $guess -lt $totfile ]]
  then
    echo "Sorry, too low.  Try again: "
  else
    echo "Sorry, too high.  Try again: "
  fi
  read guess
  (( attempts = $attempts + 1 ))
done

if [[ $attempts -eq 0 ]]
then
  echo "Wow! First guess.  It's been a long time since I've seen such genius."
else
  if [[ $attempts -lt 4 ]]
  then
    echo "Yup! Pretty good for a beginner."
  else
    echo "Finally got it right. That took you long enough, didn't it?"
  fi
fi

# end of file
