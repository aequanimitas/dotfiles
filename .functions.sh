#!/usr/bin/env bash

function mcd(){
 if [$1 -eq '']
 then
    echo 'Directory name should be given'
 else
    mkdir $1 && cd $1
 fi
}

function tmux_ns(){
 if [$1 -eq '']
 then
    echo 'Session name should be given'
 else
    tmux new -s $1 
 fi
}


function wget_site(){
 if [$1 -eq '']
 then
    echo 'URL should be given'
 else
   wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains website.org --no-parent $1
 fi
}