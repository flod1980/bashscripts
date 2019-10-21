# !/bin/bash
echo -e "Welches Betriebssystem magst du? (w:Windows, u:Ubuntu, o:OSX, m:Linux Mint)"
read bs

case $bs in w | Windows | windows )
	echo "Wirklich? Windows? Du bist komisch! :)";;
	u | Ubuntu | ubuntu )
	echo "Wirklich? Ubuntu? Das liebe ich auch";;
	o | osx | OSX )
	echo "Das kenne ich nicht aber ich denke dass du ein snob bist";;
	m )
	echo "Wirklich? Linux Mint? Ich denke dass du sehr klug bist.";;
	* )
	echo "Wirklich "$bs"? Das kenne ich nicht. Erzähl mir mal davon!"
esac