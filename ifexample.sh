# !/bin/bash
read -p "Bitte geben Sie mir eine Nummer zwichen 1 und 100:" nummer
ruckkopplung1="Hmmm... Irgenwas stimmt nicht! Diese Nummer ist kleiner als 1"
ruckkopplung2="Hmmm... Irgendwas stimmt nicht! Diese Nummer ist größer als 100"
ruckkopplung3="Ja das ist richtig! Das ist eine gute Nummer"
if [ $nummer -lt 1 ]
then
	echo $ruckkopplung1
elif [ $nummer -gt 100 ]
then
	echo $ruckkopplung2
else
	echo $ruckkopplung3
fi
