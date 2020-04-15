.DEFAULT_GOAL := README 

README:
	touch README.md
	echo "Guessing Game by 104H" >> README.md
	date >> README.md
	wc -l guessinggame2.sh | egrep -o "[0-9]+" >> README.md
