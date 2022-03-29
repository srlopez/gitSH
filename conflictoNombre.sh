!#/bin/bash

echo "<nombre>Pepe</nombre>" > nombre.xml
git add nombre.xml
git commit -m 'Creado nombre.xml'

git branch rama-1
git checkout rama-1
echo "<nombre>Juan</nombre>" > nombre.xml
git add .
git commit -m 'Modificado a Juan nombre.xml'

git checkout master

git branch rama-2
git checkout rama-2
echo "<nombre>Luis</nombre>" > nombre.xml
git add .
git commit -m 'Modificado a Luis nombre.xml'

git checkout master

git merge rama-1
git merge rama-2
