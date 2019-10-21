# !/bin/bash
num1=20
num2=5

#Aufsummierung
echo $(( num1 + num2 ))
echo $(expr $num1 + $num2 )
#ARückzug
echo $(( num1 - num2 ))
echo $(expr $num1 - $num2 )
#Multiplikation
echo $(( num1 * num2 ))
echo $(expr $num1 \* $num2 )
#Abteilung
echo $(( num1 / num2 ))
echo $(expr $num1 / $num2 )
#Restranings
echo $(( num1 % num2 ))
echo $(expr $num1 % $num2 )


