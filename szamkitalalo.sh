# !/bin/bash
tput reset
zufallszahl=$(( $RANDOM % 100 + 1 ))
trinkgeldzahler=0
trinkgeld=0
frage="Ich habe an eine Nummer gedacht. Welche ist das?"
kleiner="Deine Nummer ist kleiner als meine."
grosser="Deine Nummer ist größer als meine."
sieg="Klar! Ich habe wirklich über die $zufallszahl nachgedacht! Trikngelzähler:"

while [ $trinkgeld -ne $zufallszahl ]
do
	echo $frage
	read trinkgeld

	if [ $trinkgeld -gt $zufallszahl ]
	then
		tput reset
		echo $grosser
		let trinkgeldzahler+=1

	elif [ $trinkgeld -lt $zufallszahl ]
	then
		tput reset
		echo $kleiner
		let trinkgeldzahler+=1
	
	else
		let trinkgeldzahler+=1
		echo $sieg  $trinkgeldzahler 
	fi

	

done


