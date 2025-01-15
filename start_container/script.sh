#!/bin/bash


if [ -f .env ]; then
	source .env
else
	echo ".env file not found!"
	exit 1
fi

apt install nano
echo "PS1='\[\e[0;32m\]$USERNAME@\W \[\e[0;34m\] ~> \[\e[0m\]'" >> ~/.bashrc
echo "alias val='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes -s'" >> ~/.bashrc
echo "alias hel='valgrind --tool=helgrind -s'" >> ~/.bashrc

# cd $CONTAINER_HOME_DIR
# exec /bin/bash