#!/bin/bash
#ejercicio rebase onto

mkdir $1
cd $1
git init
echo "A" > f1.txt
git add .
git commit -m 'A'
git config --global user.email "alumno@tknika.com"
git config --global user.name "alumno"
git config --global --add safe.directory /home/alumno/source/$1
git commit -m 'A'
git branch dev
git checkout dev
echo "D" >> f1.txt
git branch feat1
git checkout feat1 
git checkout dev
git add .
git commit -m 'D1'
git branch -d feat1
git branch feat1
git checkout feat1 
echo "C" > f3.txt 
git add .
git commit -m 'C'
git log
git checkout master
echo "B" > f2.txt 
git add .
git commit -m 'B'
git log

#git rebase --onto master dev feat1
