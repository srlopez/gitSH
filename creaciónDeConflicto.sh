#! /bin/bash
#
##########################################################
# Crear un repositorio una rama y generar un conflicto   #
# Requiere configuración global de user.email y user.name#
##########################################################
#
# Crea la carpeta para el repositorio y nos movemos a ella
mkdir ./conflicto
cd ./conflicto
# Se crea un repositorio git
git init
# Se crea un archivo y se le realiza commit
echo "mensaje " > read.me
git add .
git commit -m 'primer commit'
cat read.me > "historial.log"
# Se crea una rama llada rama1 y posteriormente se commitea un cambio en el master y otro distinto en la rama
git branch rama1
# master
echo "master" >> read.me
git add read.me
git commit -m 'mensaje master'
echo " " >> "historial.log"
cat read.me >> "historial.log"
# rama1
git checkout rama1
echo "rama" >> read.me
git add read.me
git commit -m 'mensaje rama'
echo " " >> "historial.log"
cat read.me >> "historial.log"
# Se crea un merge y se produce un conflicto
git checkout master
git merge rama1
echo " " >> "historial.log"
cat read.me >> "historial.log"


