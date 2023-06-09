#!/bin/bash

#  ____   ___  _    _   _  ____    _    ___
# / ___| / _ \| |  | | | |/ ___|  / \  / _ \
# \___ \| | | | |  | | | | |     / _ \| | | |
#  ___) | |_| | |__| |_| | |___ / ___ \ |_| |
# |____/ \___/|_____\___/ \____/_/   \_\___/

#  ____  _____ ____    _    _____ ___ ___            _____
# |  _ \| ____/ ___|  / \  |  ___|_ _/ _ \          |___ /
# | | | |  _| \___ \ / _ \ | |_   | | | | |  _____    |_ \
# | |_| | |___ ___) / ___ \|  _|  | | |_| | |_____|  ___) |
# |____/|_____|____/_/   \_\_|   |___\___/          |____/


# Varias formas de solucionar

# Loop for :

for i in sub*.txt;
do
    sed -i s'/ALUNO\=OPENSOURCE/ALUNO\=DESAFIO/' $i
    sed -i s'/AULA\=1/AULA\=3/' $i
    echo "Alterado conteúdo no arquivo $i"
done

# Via linha de comando, sem utilizar Loop

sed -i s'/ALUNO\=OPENSOURCE/ALUNO\=DESAFIO/' sub*.txt ; sed -i s'/AULA\=1/AULA\=3/' sub*.txt


