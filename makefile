all: README.md

README.md: guessinggame.sh
echo" Unix Assignment" > README.md
echo "\n make was run at" >> README.md
date >> README.md
echo "\n guessinggame.sh contains " >> README.md
cat guessinggame.sh | wc -l >> README.md
echo"number of lines of code" >> README.md

