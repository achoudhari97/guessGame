README.md: guessingGame.sh
	echo "# Welcome to the Guessing Game Project!" > README.md
	echo "## This file was made at: $$(date)" >> README.md
	echo "### The number of lines of code in guessingGame.sh is: $$(wc -l < guessingGame.sh)" >> README.md

clean:
	rm -f README.md
