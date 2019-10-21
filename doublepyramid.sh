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


