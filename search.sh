#!/bin/bash
while((1))
do
	read -p "Search-> " s
	#no of words
	sa=($s)
	nw="${#sa[@]}"
	echo "Nw=$nw"
	for e in *.txt
	do
		z=0
		for w in "${sa[@]}"
		do
			tmp=$(grep -i "$w" "$e" | wc -l)
			if((tmp>0))
			then
			((++z))
			fi
		done
		if((z==nw))
		then
		fname=$(echo $e | cut -d'.' -f1)
		echo "Found in $fname"
		eog "$fname.png"
		break
		fi
	done
done
			
