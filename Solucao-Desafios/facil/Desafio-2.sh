#  ____   ___  _    _   _  ____    _    ___
# / ___| / _ \| |  | | | |/ ___|  / \  / _ \
# \___ \| | | | |  | | | | |     / _ \| | | |
#  ___) | |_| | |__| |_| | |___ / ___ \ |_| |
# |____/ \___/|_____\___/ \____/_/   \_\___/

#  ____  _____ ____    _    _____ ___ ___            ____
# |  _ \| ____/ ___|  / \  |  ___|_ _/ _ \          |___ \
# | | | |  _| \___ \ / _ \ | |_   | | | | |  _____    __) |
# | |_| | |___ ___) / ___ \|  _|  | | |_| | |_____|  / __/
# |____/|_____|____/_/   \_\_|   |___\___/          |_____|


# Varias formas de solucionar

# Loop While :

number=0
while [ $number -lt 500 ]; do
    for i in $(cat arquivo_codificado.txt | base64 --decode);
    do
    number=$(expr $number + 1)
    if [[ $(echo $number) -eq 125 ]];
    then
        echo "Código para cumprir desafio-2: $i"
        ./script-validacao.sh $i
    fi
    done
done

# Via linha de comando, sem utilizar Loop

number=$(cat arquivo_codificado.txt | base64 --decode | head -n 125 | tail -n 1) ; ./script-validacao.sh $number
