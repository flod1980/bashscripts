# !/bin/bash
tput reset

r=9
n=1
s=9
z=-1


while (( n <= r ))
do
	for (( i=1; i<=s; i++ ))
	do
		echo -n "  "
	done

	for (( i=-1; i>=z; i-- ))
	do
		let y=i+n+1
		echo -n " $y"
	done

	for (( i=1; i<=n; i++ ))
	do
		echo -n "$i "
	done
	
	echo ""
	let n=n+1
	let s=s-1
	let z=z-1
	
done

# Magyarázat
# a tput reset sor törli a képernyőt minden egyes programindításkor
# Ezután Létrehoztam 4 db változót:
# - r: ebben rögzítettem, hogy hány sort akarok megjeleníteni
# - n: Az a szám, ahonnan kezdve elkezdem kírni a számokat balról jobbra haladva
# - s: A maximum soreltolások száma (balról jobbra haladva)
# - z: Az a szám, ahonnan elkezdem  kiírni a számokat jobbról balra haladva

# Indítok egy while ciklust. Ez a ciklus határozza meg gyakorlatilag, hogy meddig fog futni a program:
# Minden körben növeljük az n változó értékét eggyel (let n=n+1) és a program egészen addig fut, amíg el nem érjük az r értékét, vagyis a 9-et.
# Minden körben csökkentem a soreltolások számát is eggyel (let s=s-1). hiszen ahogy növekszik a számok darabszáma, úgy kell kevésbbé eltolni a sorokat, hogy kijőjjön a piramis forma.
# Minden körben csökkentem a z-nek is az értékét (let z=z-1), ennek oka, majd később fog kiderülni.

# Három for ciklusra van szükség:
# - Az első csinálja a soreltolást. Létrehoztam egy helyi változót éshozzá egy kezdőértéket (i=1). Minden körben 1-gyel növelem az i értékét és ez egészen addig fog futni, amíg el nem éri a maximum soreltolás számát. Minden körben két új szóközzel tolom el a sort (az egyik a számnak kell, a másik meg az utána következő üres helynek.). Tehát itt mivel a while ciklus első körében még 9 az s értéke, 9x fut le ez a ciklus és 9x fog beszűrni duplaszóközt. A while ciklus második körében - mivel minden jörben ugye 1-gyel csökkentjük az s értékét - már csak 8x fog lefutni és így tovább
# - A második ciklus egy kicsit bonyolultabb. Ez azt okozza, hogy nemcsak kiírja jobbról balra a számokat úgy, hogy minden sorban eggyel több darabot ír ki, de ráadásul jobbról bara haladva növeli a számok értékét. Tehát ez a számpiramis balszárnya. Itt a helyi változó -1-ről indul (i=-1) és minden körben csökkentem 1-gyel az i értékét. Magán a cikluson belül létrehoztam egy y nevú helyi változót, ami ennek a for ciklusnak minden körében felveszi ennek az aktuális i értéket és hozzáadja a while ciklus minden körének az akutális n értékét plusz még 1-et. Ezzel a képlettel lehet másik irányba növelni a számokat.
# - A harmadik ciklus feladata a háromszög jobbszárnyának a kirajzolása, a fentiekhez hasonló elven.


