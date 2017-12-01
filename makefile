# makefile
# Author: Thom Wescott
# Last Edit: 30 Nov 2017
#
# Course final assignment for Coursera Unix Workbench
# creates a README.md file with contents as below
#

# set some default targets

.PHONY : build
build : all

.PHONY : all
all : README.md

.PHONY : clean

clean :
	rm -f README.md

# create the README.md file

README.md :
	touch README.md
	echo "The title of this project is: " > README.md
	echo "   **Coursera Unix Workbench Final Project**" >> README.md
	echo " " >> README.md      # newline
	echo "README.md created by running this makefile on: " >> README.md
	date >> README.md
	echo " " >> README.md
	echo "The guessinggame.sh file has the following number of lines: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo " " >> README.md

# end of file
