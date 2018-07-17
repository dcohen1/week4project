#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
unsatified=true
file_count=$(ls -l | grep ^- | wc -l)
echo "Guess how many files are in the working directory. Type in a number and press Enter:"
read response
if [[ $response -eq $file_count ]]
then
 echo "Congratulations! You guessed the correct number."
 unsatisfied=false
fi
while $unsatisfied
 do 
  if [[ $response -gt $file_count ]]
  then
   echo "Your guess is too high. Guess again:"
    read response
  elif [[ $response -lt $file_count ]]
  then
    echo "Your guess is too low. Guess again:"
    read response
  else 
    echo "Congratulations! You guessed the correct number."
    unsatisfied=false
 fi
 done
}

guessinggame
