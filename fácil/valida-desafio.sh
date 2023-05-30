#!/bin/bash

#  ____   ____ ____  ___ ____ _____
# / ___| / ___|  _ \|_ _|  _ \_   _|
# \___ \| |   | |_) || || |_) || |
#  ___) | |___|  _ < | ||  __/ | |
# |____/ \____|_| \_\___|_|    |_|

# __     ___    _     ___ ____    _    ____    _    ___
# \ \   / / \  | |   |_ _|  _ \  / \  / ___|  / \  / _ \
#  \ \ / / _ \ | |    | || | | |/ _ \| |     / _ \| | | |
#   \ V / ___ \| |___ | || |_| / ___ \ |___ / ___ \ |_| |
#    \_/_/   \_\_____|___|____/_/   \_\____/_/   \_\___/



## Para tornar esse script executavel, execute o comando: chmod +x valida-desafio.sh
## Forma de executar: ./valida-desafio.sh $PWD  ---- ou ---- ./valida-desafio.sh </caminho/desafio> --- sempre adicionar o caminho aonde se encontra os desafios.

caminho=$1 

select opcao in desafio-1 desafio-2 desafio-3
do 
case ${REPLY} in 
1)
    if [[ $(find $caminho -name "*.exc" | wc -l) -gt 0 || $(find $caminho -name "*.txt" | wc -l) -lt 10 ]];
    then
        echo "Exercicio não conluído, existem $(find $caminho -name "*.exc" | wc -l) arquivos .exc"
        break
    else
        echo "Exercicio Concluído, parabéns!"
        break
    fi

;;

esac
done
