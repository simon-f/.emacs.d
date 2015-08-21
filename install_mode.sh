#!/bin/bash

emacs_file="/home/simon/.emacs"
mode_name=$(echo $1 | cut -d'/' -f 5 | cut -d'.' -f 1)
cd '/home/simon/.emacs.d/lisp'

git clone $1
echo "" >> $emacs_file
echo ";;; "$mode_name"" >> $emacs_file
echo "(add-to-list 'load-path \"~/.emacs.d/lisp/"$mode_name"/"$mode_mame".el\")" >> $emacs_file
echo "(require '"$mode_name")" >> $emacs_file



