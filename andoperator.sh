# !/bin/bash
echo -e "Diese Internetseite ist nur für junge Leute. Dein Alter muss zwichen 18 und 30 sein. So...Wie alt bist du? \c"
read dasalter
if [ $dasalter -ge 18 ] && [ $dasalter -le 30 ]
then
	echo "Du kannst eintreten"
elif [ $dasalter -gt 30 ]
then
	echo "Sie sind zu alt für unseren Verein. Sie dürfen nicht eintreten. "
elif [ $dasalter -lt 18 ]
then
	echo "Du bist zu jung für unseren Verein. Geschwinde von hier!"
fi
