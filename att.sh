#!/usr/bin/bash

GREEN='\033[0;31m'
GRE='\033[0;32m'
echo "${GRE} Iniciando Backup."

sleep 1
echo "${GRE} Criando Pasta de Backup.."
cd ../
FILES=p7back
if [ -d "$FILES" ]; then
    echo "${GREEN} $FILES Existe Apagando e Criando..."
        cd ./ && rm -rf p7back
      sleep 2
    else 
    echo "${GRE} $FILES Não Existe Criando Prosseguindo..."
fi
mkdir p7back

sleep 1
echo "${GRE} Copiando Arquivos..."
cd botp7
cp -fR ./logos ../p7back
cp -fR ./dono ../p7back
cp -fR ./datab ../p7back
cp -fR ./audios ../p7back
FILE=BarBar.json
if [ -f "$FILE" ]; then
    cp -f BarBar.json ../p7back
    else 
    echo "${GREEN} $FILE Não Existe Prosseguindo..."
fi
cd ../
echo "${GRE} Arquivos Copiados Prosseguindo...."
sleep 2
rm -rf botp7 && git clone https://github.com/Kaykep7/botp7.git
sleep 2
echo "${GRE} Pasta do Bot Atualizada Prosseguindo..."
sleep 2
rm -rf botp7/logos/
rm -rf botp7/dono/
rm -rf botp7/datab/
rm -rf botp7/audios/
cd p7back
cp -fR ./logos ../botp7
cp -fR ./dono ../botp7
cp -fR ./datab ../botp7
cp -fR ./audios ../botp7

if [ -f "$FILE" ]; then
    cp -f ./BarBar.json ../botp7
fi
sleep 2
echo "${GRE} O Backup Ficara salvo na pasta p7back Prosseguindo..."
sleep 1
echo "${GRE} Bot Atualizado com Sucesso."
exit
