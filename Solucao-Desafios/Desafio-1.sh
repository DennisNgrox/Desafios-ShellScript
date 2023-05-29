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


# Varias formas de solucionar

# Solucionando desafio com "find" utilizando -exec

find /caminho/desafio -name '*.exc' -exec rm {} \;

# Solucionando desafio com "find" utilizando delete

find /caminho/desafio -name '*.exc' -delete

# Solucionando desafio com loop "for"

for i in $(ls | egrep '*.exc'); do rm -rf $i; done


# Solucionando desafio com "rm"

rm -rf /caminho/desafio/*.exc

# Existem diversas forma de se ganhar esse desafio!
