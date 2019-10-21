# !/bin/bash
args=("$@")
echo "Az első argumentum:"  ${args[0]}
echo "A második argumentum:"  ${args[1]}
echo "Összes argumentum:" $@
echo "Az argumentumok száma:" $#