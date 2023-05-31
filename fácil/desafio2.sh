#  ____  _____ ____    _    _____ ___ ___            ____
# |  _ \| ____/ ___|  / \  |  ___|_ _/ _ \          |___ \
# | | | |  _| \___ \ / _ \ | |_   | | | | |  _____    __) |
# | |_| | |___ ___) / ___ \|  _|  | | |_| | |_____|  / __/
# |____/|_____|____/_/   \_\_|   |___\___/          |_____|



## Validação de conteúdo:

## Primeiro:
## Rode os seguintes comandos para criar o laboratório e logo após resolva-o

#Criar pasta Desafio
mkdir Desafio

#Entrar na pasta Desafio
cd Desafio/ 

index=(
Miguel
Arthur
Gael
Théo
Heitor
Ravi
Davi
Bernardo
Noah
Gabriel
Helena
Alice
Laura
Maria Alice
Sophia
Manuela
Maitê
Liz
Cecília
Isabella
)

for i in ; 
do 
    random=$(head -c40 /dev/urandom | base64)
    echo $random-$i | base64 >> desafio-2.txt
done



# Desafio: Crie um loop para excluir todos os arquivos que terminam com .exc

# EM CONSTRUÇÃO!!!!!
