#!/bin/bash

FILE=$1
if [ -f $1 ]; then

echo "Ficheiro $FILE ja existe na pasta!"
exit 1

else

echo "#!/bin/bash" > $FILE
if [ $? -eq 0 ]; then

echo "Ficheiro $FILE criado com sucesso"

else

echo "erro verificar permissoes"

fi

fi

chmod 755 $FILE
if [ $? -eq 0 ]; then

echo "Permissao de execucao 755 para $FILE"

else

echo "Problemas ao gerar permissao 755 para $FILE"

fi