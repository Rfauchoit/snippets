#!/bin/bash

while [ -z $FEU ] || [ $FEU=false ]
do
    echo "Entrez la couleur du feu ? :"
    read FEU

	if [[ $FEU = "vert" ]]
	then
		echo "Vous pouvez passer"
        break

	elif [[ $FEU = "orange" ]]
	then 
		echo "Attendez"
        break

	elif [[ $FEU = "rouge" ]]
	then
		echo "Stop"
        break
	else 
		echo -e "Hum hum !\033[0;31m ${FEU} \033[0m n'est pas une couleur valide :-D"
        	feu=false
	fi
done
