#!/bin/bash

# ' ____   ___  _    _   _  ____    _    ___     '
# '/ ___| / _ \| |  | | | |/ ___|  / \  / _ \    '
# '\___ \| | | | |  | | | | |     / _ \| | | |   '
# ' ___) | |_| | |__| |_| | |___ / ___ \ |_| |   '
# '|____/ \___/|_____\___/ \____/_/   \_\___/    '

# ' ____  _____ ____    _    _____ ___ ___       ____   '
# '|  _ \| ____/ ___|  / \  |  ___|_ _/ _ \     |___ \  '
# '| | | |  _| \___ \ / _ \ | |_   | | | | |_____ __) | '
# '| |_| | |___ ___) / ___ \|  _|  | | |_| |_____/ __/  '
# '|____/|_____|____/_/   \_\_|   |___\___/     |_____| '

# Caminho para o arquivo
arquivo=$1

# Obtém o carimbo de data e hora atual
data_atual=$(date +%s)

# Obtém o carimbo de data e hora do arquivo
data_arquivo=$(stat -c %Y ${arquivo})

# Calcular a diferença em segundos
diferenca=$(($data_atual - $data_arquivo))

horas=$(($diferenca / 3600))
minutos=$(( ($diferenca % 3600) / 60 ))

# Exibe o tempo decorrido
echo "Tempo decorrido: $horas horas e $minutos minutos"
# echo $minutos

