#!/bin/bash
# file: guessingGame.sh

function runGuessingGame {
	local totalFiles=$(find . -maxdepth 1 -type f -exec echo \; | wc -l)
	# echo "(Comment this line later) Total files found in directory:$totalFiles "
	read -p "Your guess: " guess
	
	if [ $guess -eq $totalFiles ]; then
		echo "Congratulations! You guessed correctly!!"
	elif [ $guess -lt $totalFiles ]; then
		echo "Try again, your guess is on the LOWER side."
		# $(guessingGame "$0")
		runGuessingGame
	else
		echo "Try again, your guess is on the HIGHER side."
		# $(guessingGame "$0")
		runGuessingGame
	fi

}

function guessingGame {
	echo "Guess the number of files in the directory! "
	runGuessingGame
}
