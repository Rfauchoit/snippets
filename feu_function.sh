#!/bin/bash

function quel_feu(){

	echo "Quelle est la couleur du feu ? "
	read FEU

	if [[ $FEU = "vert" ]]
	then
		echo "Vous pouvez pa sser"

	elif [[ $FEU = "orange" ]]
	then 
		echo "Attendez"

	elif [[ $FEU = "rouge" ]]
	then
		echo "Stop"
	else 
		echo -e "Hum hum !\033[0;31m ${FEU} \033[0m n'est pas une couleur valide :-D"
		quel_feu
	fi
}

quel_feu



