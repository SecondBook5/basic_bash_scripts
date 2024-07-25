#!/usr/bin/env bash

# Function to prompt the user to guess the number of files
function guess_files {
  # Get the number of files in the current directory
  local num_files=$(ls -1 | wc -l)
  local guess

  # Infinite loop to keep prompting the user until they guess correctly
  while true; do
    # Prompt the user for a guess
    echo -n "Guess the number of files in the current directory: "
    read guess

    # Check if the guess is correct
    if [[ $guess -eq $num_files ]]; then
      echo "Congratulations! You guessed the correct number of files."
      break
    # Check if the guess is too low
    elif [[ $guess -lt $num_files ]]; then
      echo "Your guess is too low. Try again."
    # Check if the guess is too high
    else
      echo "Your guess is too high. Try again."
    fi
  done
}

# Call the function to start the guessing game
guess_files
