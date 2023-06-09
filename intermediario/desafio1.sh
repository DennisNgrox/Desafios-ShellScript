#!/bin/bash

#  ____  _____ ____    _    _____ ___ ___            _
# |  _ \| ____/ ___|  / \  |  ___|_ _/ _ \          / |
# | | | |  _| \___ \ / _ \ | |_   | | | | |  _____  | |
# | |_| | |___ ___) / ___ \|  _|  | | |_| | |_____| | |
# |____/|_____|____/_/   \_\_|   |___\___/          |_|

# Crie um script que realize um brute force para descriptografar o arquivo

# Criar laboratorio

# Criar diretorio
mkdir desafio/intermediario/

# Acessar diretório
cd desafio/intermediario/

# Criar arquivo crip.txt
echo "Parabéns, você descriptografou" > crip.txt

# Instalar zip
apt install zip -y

# Compactar com senha arquivo crip, renomea-lo para crip.zip e excluído crip.txt
zip -e crip.zip crip.txt -P 'D3s4f10-1@' ; rm -rf crip.txt

# Criado wordlist
for i in {1..3}; do echo -e "ESCOLA=1234\nUBUNTU\n123456=A\n17827938\nOPENSOURCE\nDESAFIO4\nD3s4f10-1@" >> wordlist; done

# DESAFIO:

# Crie um script que realize uma quebra de senha utilizando brute force e esse script terá como parâmetro 1 - Arquivo.ZIP e 2 - wordlist

echo "Desafio criado com sucesso, Divirta-se!"
