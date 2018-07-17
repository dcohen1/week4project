README.md:
	touch README.md

README.md: guessinggame.sh
	echo "## This is the readme file for guessinggame." > README.md
	printf "\n" >> README.md
	echo "This file was created by make on **`date`**." >> README.md
	printf "\n" >> README.md
	echo "The number of lines of code in guessinggame.sh is:" >> README.md
	grep "^[^#|\s]" guessinggame.sh | wc -l | egrep -o "[0-9]+" >> README.md
