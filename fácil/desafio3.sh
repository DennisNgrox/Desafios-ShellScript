#!/bin/bash

#  ____  _____ ____    _    _____ ___ ___            _____
# |  _ \| ____/ ___|  / \  |  ___|_ _/ _ \          |___ /
# | | | |  _| \___ \ / _ \ | |_   | | | | |  _____    |_ \
# | |_| | |___ ___) / ___ \|  _|  | | |_| | |_____|  ___) |
# |____/|_____|____/_/   \_\_|   |___\___/          |____/



## Primeiro:
## Rode os seguintes comandos para criar o laboratório e logo após resolva-o

#Criar pasta Desafio
mkdir Desafio/Desafio3

#Entrar na pasta Desafio
cd Desafio/Desafio3

# Crie o laboratório com os comandos abaixos:

for i in {1..9}; do echo -e "ESCOLA=LINUX\nUBUNTU\nCLASSE=A\nSALA=18\nALUNO=OPENSOURCE\nDESAFIO=DESAFIO3\nAULA=1" > sub$i.txt; done

# Desafio:

# Substitua os seguintes campos de 10 arquivos de texto, utilizando loop:
# Substitua "ALUNO=OPENSOURCE" por "ALUNO=DESAFIO3"
# Substitua "AULA=1" POR "AULA=3"
