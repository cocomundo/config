#!/bin/bash

input1=0
input2=0

echo "pacman (1) or apt (2) ?"
while [[ $input1 != 1 && $input1 != 2 ]]
do
    read input1
done

echo "c/c++ (1) or "
while [[ $input2 != 1 && $input2 != 2 ]]
do
    read input2
done

downloadlist="vim zathura unzip htop  docker"

if [ $input2 -eq 1 ]
then
    downloadlist+=" ctags make valgrind gdb g++ gcc clang cmake"
fi
echo $downloadlist

mv ./.vimrc ~/. && mv ./.bashrc ~/.


#if [$input -eq 1]
#then
#    sudo pacman -Syu
#    sudo pacman -S 
#fi

