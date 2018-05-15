all: readme.md

readme.md: makefile
	touch readme.md
	echo "# Bash, Make, Git, and GitHub" > readme.md
	echo "Make was run on: _`date`_.  " >> readme.md
	echo "guessinggame.sh has __`cat *.sh | wc -l`__ lines.  " >> readme.md

clean:
	rm readme.md   
