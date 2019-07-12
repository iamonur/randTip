#!bin/bash
echo "Welcome to randTip installer."
#ask for permission
read -p "A script will be attached to your .bashrc file to work every terminal startup. This script will show you a tip for the terminal session. Do you agree? (y/n) " answer
choice="false"
case "$answer" in
	y|Y ) choice="true";;
	n|N ) choice="false";;
	* ) echo "invalid choice";;
esac
if [ "$choice" = "true" ]; then
	if [ -f installed ]; then
		echo "Already Installed."
	else
		echo "Installing..."
		echo "bash $(pwd)/randTip.sh"  >> ~/.bashrc
		touch installed
		echo "Installed."
	fi
else
	echo "Not installed."
fi
