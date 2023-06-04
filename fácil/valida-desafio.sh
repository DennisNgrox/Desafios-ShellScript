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

2)
    if [[ $1 -eq $(cat arquivo_codificado.txt | base64 --encode | sed -n '125p') ]];
    then
        echo "Exercicio Concluído, 125° é $1"
        break
    else
        echo "Incorreto, tente novamente!"
        break
    fi

;;

3)
    for i in sub*.txt
    do
        aluno=$(grep -Eo "ALUNO=DESAFIO$" $i)
        aula=$(grep -Eo "AULA=3$" $i)
        if [[ $(echo $aluno) == "ALUNO=DESAFIO" && $(echo $aula) == "AULA=3" ]];
        then
            alterado=$(echo "$i alterado!")
            if [[ $(echo $alterado | grep -Eo "$i") == 'sub9.txt' ]];
            then
                echo "Exercicio concluído!"
                break
            fi
        else
            echo "$i não alterado totalmente!"
            break
        fi
    done
esac
done
