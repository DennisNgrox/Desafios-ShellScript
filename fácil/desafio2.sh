#!/bin/bash

#  ____  _____ ____    _    _____ ___ ___            ____
# |  _ \| ____/ ___|  / \  |  ___|_ _/ _ \          |___ \
# | | | |  _| \___ \ / _ \ | |_   | | | | |  _____    __) |
# | |_| | |___ ___) / ___ \|  _|  | | |_| | |_____|  / __/
# |____/|_____|____/_/   \_\_|   |___\___/          |_____|



## Validação de conteúdo:

## Primeiro:
## Rode os seguintes comandos para criar o laboratório e logo após resolva-o

#Criar pasta Desafio
mkdir Desafio/Desafio2

#Entrar na pasta Desafio
cd Desafio/Desafio2

# Criar arquivo com dados criptografados

for i in `seq 500`; 
do 
    echo $((RANDOM%500)) | base64 >> arquivo_codificado.txt
done



# Desafio: Crie um loop para decodificar todo o conteúdo do arquivo e informar o seu valor no output, logo após execute o script de solução passando como primeiro argumento 125° número (Lembrando que a contagem começa do 0!)

# Exemplo: ./script-valida.sh 125

