# !/bin/bash

echo -e "Bitte geben Sie mir die gesuchte Datei: \c"
read filename
ruckkopplung1="Die Gesucht Datei ist gefunden."
ruckkopplung2="Die gesuchte Datei ist nicht gefunden."


if [ -e $filename ]
then
	echo $ruckkopplung1
else
	echo $ruckkopplung2
fi