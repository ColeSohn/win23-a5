#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1

echo "We've set up a GitHub Actions Workflow that will run all"
echo "of the shell scripts in this directory as a series of tests."
echo
echo "To fail any test, you should use the exit 1 command;"
echo "To end a test early as a success, you should use the exit 0 command."

echo "Invoke your program with the \$CALCULATOR variable; an example is below"

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 + 2) -ne 3 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 + 2) failed to produce 3 as an output!'
  exit 1
fi

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 + 3) -ne 4 ]]; then  # If the output of the program is not 2...
  echo 'ERROR! A valid run of the calculator (1 + 3) failed to produce 4 as an output!'
  exit 1
fi