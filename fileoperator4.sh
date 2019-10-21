# !/bin/bash
echo -e "Bitte, geben Sie mir den Name der Datei: \c"
read filename
strecke="./test/"$filename 
if [ -f $strecke ]
then
	echo "Die untersuchtet Datei (" $strecke ") ist gefunden."
	if [ -w $strecke ]
	then
		echo "Bitte geben Sie hier Ihren Text ein um ihn am Ende des Dokuments einzufügen."
		cat >> $strecke
	else
		echo "Sie haben keine Erlaubnis zu in dieser Datei schreiben. "
	fi
else
	echo "Die untersuchtet Datei (" $strecke ") ist nicht gefunden."
fi