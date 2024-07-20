#!/bin/bash

# Function to display the countdown
echo -e "\033[31m$(figlet -f small ===================)\033[0m"
echo -e "\033[31m$(figlet WELCOME TO MY REMAINDER APP)\033[0m"
echo -e "\033[31m$(figlet -f small ===================)\033[0m"
function countdown {
    local timer=$1
    while [ $timer -gt 0 ]; do
        echo -ne "Time remaining: $timer seconds\033[0K\r"
        sleep 1
        ((timer--))
    done
    notify-send -i /home/user/GitHub/Reminder_v1/assets/images/clock.png -a 'Reminder' -t 6000 'Reminder' 'TIME TO TAKE A BREAK'
    paplay './assets/sounds/notification.mp3'
}

choice=''
while [[ $choice != '5' ]]; do


  echo "=========================================================================="

  echo "1.Set The Timer For 25 Minutes"
  echo "2.Set The Timer For 45 Minutes"
  echo "3.Set The Timer For 60 Minutes"
  echo "4.Set The Timer For 120 Minutes"
  echo "5.To Open The GUI Version";
  echo "6.Exit";

  echo "=========================================================================="

  # Take The Input for Choice Number
  #if [[ $choice ]]; do
    read -p "Enter The Choice Number : " choice
    echo "YOU CAN EXIT THE PROGRAM BY USING [ CTRL+X ] "
    if [[  $choice == '5' ]]; then
       python ./assets/GUI.py
    else
      while [[ '1' == '1'  ]]; do

        if [[ $choice == '1' ]]; then
          echo -e "\033[31m$(figlet THE TIMER HAS BEEN STARTED)\033[0m"
          countdown $((25*60))
        elif [[ $choice == '2' ]]; then
          echo -e "\033[31m$(figlet THE TIMER HAS BEEN STARTED)\033[0m"
          countdown $((45*60))
        elif [[ $choice == '3' ]]; then
          echo -e "\033[31m$(figlet THE TIMER HAS BEEN STARTED)\033[0m"
          countdown $((60*60))
        elif [[ $choice == '4' ]]; then
          echo -e "\033[31m$(figlet THE TIMER HAS BEEN STARTED)\033[0m"
          countdown $((120*60))
        elif [[ $choice == '6' ]]; then
          exit 0;
      fi
    done
    fi
  #else
      #echo "Please Enter A Valid Value"
 #fi
  # Start the countdown

done
