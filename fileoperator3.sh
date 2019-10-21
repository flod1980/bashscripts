# !/bin/bash
echo -e "Bitte, geben Sie mir den Name der Datei: \c"
read filename
strecke="./test/"$filename 
if [ -f $strecke ]
then
	echo "Die Datei (" $filename ") ist gefunden."
	if [ -c $strecke ]
	then
		echo "Diese Datei (" $strecke ") ist eine zeichenbasierte Datei. "
		if [ -s $strecke ]
		then
			echo "Diese Datei (" $strecke ") enthält einige Zeichen."
		else
			echo "Diese Datei (" $strecke ")  ist leer"
		fi
	elif [ -b $strecke ]
	then
		echo "Diese Datei (" $strecke ") ist eine  Binärdatei. "
	else
		echo "Ich kann diese Datei (" $strecke ") nicht untersuchen. "
	fi
else
	echo "Die Datei (" $filename ") ist nicht gefunden."
fi