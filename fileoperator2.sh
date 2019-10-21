# !/bin/bash
echo -e "Bitte, geben Sie mir eine Mappe: \c"
read dirname
if [ -d $dirname ]
then
	echo "Die gesuchte Mappe (" $dirname ") ist gefunden."
else
	echo "Die gesuchte Mappe (" $dirname ") ist nicht gefunden."
fi