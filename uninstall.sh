#!bin/bash

if [ -f installed ]; then
	echo "Welcome to randTip uninstaller."
else
	echo "randTip must be installed before uninstalling."
	exit
fi
read -p "Are you sure about uninstalling randTip? (y/n) " answer
choice="false"
case "$answer" in
	y|Y ) choice="true";;
	n|N ) ;;
	* )   echo "invalid choice";;
esac
if [ "$choice" = "true" ]; then
	echo "Uninstalling randTip..."
	sed '/randTip.sh$/d' ~/.bashrc > temprandTip.txt && mv temprandTip.txt ~/.bashrc
	rm installed
	echo "Uninstalled."
else
	echo "Exiting uninstaller. randTip still installed."
fi
