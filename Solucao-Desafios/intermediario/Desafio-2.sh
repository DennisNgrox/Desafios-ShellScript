#!/bin/bash


# Caminho para o arquivo
arquivo=$1

# Obtém o carimbo de data e hora atual
data_atual=$(date +%s)

# Obtém o carimbo de data e hora do arquivo
data_arquivo=$(stat -c %Y ${archive})

# Calcular a diferença em segundos
diferenca=$(($data_atual - $data_arquivo))

horas=$(($diferenca / 3600))
minutos=$(( ($diferenca % 3600) / 60 ))

# Exibe o tempo decorrido
echo "Tempo decorrido: $horas horas e $minutos minutos"
