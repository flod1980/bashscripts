# !/bin/bash
num1=20.5
num2=5

#Összeadás
echo $num1 + $num2 | bc
#Kivonás
echo $num1 - $num2 | bc
#MSzorzás
echo $num1 \* $num2 | bc
#Osztás
echo "scale=2; $num1 / $num2" | bc
#Maradékos osztás
echo $num1 % $num2 | bc
#Gyökvonás
echo "scale=2; sqrt( $num1 )" | bc -l
#Hatványozás
echo 3 ^ 3 | bc -l



