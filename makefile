

README.md: guessinggame.sh
	rm README.md
	touch README.md
	echo "# Thank you for playing **Guessing Game**" >> README.md
	echo "## Date and time created" >> README.md
	date +"%c" >> README.md
	echo "## Number of lines in the file" >> README.md
	wc -l guessinggame.sh >> README.md
	
