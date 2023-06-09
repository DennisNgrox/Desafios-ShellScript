#!/bin/bash

#  ____   ___  _    _   _  ____    _    ___
# / ___| / _ \| |  | | | |/ ___|  / \  / _ \
# \___ \| | | | |  | | | | |     / _ \| | | |
#  ___) | |_| | |__| |_| | |___ / ___ \ |_| |
# |____/ \___/|_____\___/ \____/_/   \_\___/

#  ____  _____ ____    _    _____ ___ ___        _
# |  _ \| ____/ ___|  / \  |  ___|_ _/ _ \      / |
# | | | |  _| \___ \ / _ \ | |_   | | | | |_____| |
# | |_| | |___ ___) / ___ \|  _|  | | |_| |_____| |
# |____/|_____|____/_/   \_\_|   |___\___/      |_|

sleep 1;

echo ' ____  ____  _   _ _____ _____   _____ ___  ____   ____ _____ '
echo '| __ )|  _ \| | | |_   _| ____| |  ___/ _ \|  _ \ / ___| ____|'
echo '|  _ \| |_) | | | | | | |  _|   | |_ | | | | |_) | |   |  _|  '
echo '| |_) |  _ <| |_| | | | | |___  |  _|| |_| |  _ <| |___| |___ '
echo '|____/|_| \_\\___/  |_| |_____| |_|   \___/|_| \_\\____|_____|'
echo ' '
echo ' '

sleep 2;
# Brute force em arquivo .zip

archive=$1
wordlist=$2

for e in $(cat $wordlist);
do
    command=$(unzip -tq -P "$e" ${archive})
    result=$(echo $command | grep -Eo 'incorrect')

    if [[ $(echo ${result}) == 'incorrect' ]]
    then
        echo "senha incorreta: $e"
        sleep 2;
    else
        echo "Senha encontrada: $e"
        unzip -P "${e}" ${archive} > /dev/null 2>&1
        echo ' '
        cat crip.txt    
        break
    fi
done

