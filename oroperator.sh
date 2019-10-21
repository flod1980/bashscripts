# !/bin/bash
echo -e "Bitte wählen Sie aus folgenden Eissorten: Vanillie, Tutti-Frutti, Karamell, Rumnüsse, Kaffee \c"
read eis
if [[ $eis -eq "Vanillie" || $eis -eq "Tutti-Frutti" || $eis -eq "Karamell" || $eis -eq "Rumnüsse" || $eis -eq "Kaffee" ]]
then
	echo "Hier gehen Sie"
elif [ $eis -eq "Pistazie" ]
then
	echo "Die Pistazie ist ausgegangen!"
else
	echo "Es gab kein(e) "$eis
fi

