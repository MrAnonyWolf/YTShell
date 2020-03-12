#!/system/bin/sh
description(){
echo


}
status(){
while true
do
echo
read -p "Insert link: " link;
if [ $link > 0 ]
  then
echo "  ❲═════════❲Status Link❳═════════❳"
sleep 1
echo " Link: "$link
sleep 0.5
echo "Scanning..."
echo
echo -n "Title: "
youtube-dl $link --skip-download --get-title
echo
echo -n "Time duration: "
youtube-dl $link --skip-download --get-duration
echo
echo -n "Filename: "
youtube-dl $link --skip-download --get-filename
echo
echo -n "Format: "
youtube-dl $link --skip-download --get-format
echo
echo -n "Thumbnail: "
youtube-dl $link --skip-download --get-thumbnail
echo
echo -n "Url: "
youtube-dl $link --skip-download --get-url
echo
echo -n "User agent: "
youtube-dl $link --skip-download --dump-user-agent
echo
echo "Done!"
sleep 1
read -p "❲Press ENTER to continue❳" cont;
granted
else
    echo "Please insert a link!"
      sleep 1
    fi
done
}
audio(){
while true
do
clear
banner
echo
sleep 0.5
echo "  ❲═════════❲Audio converting Menu❳═════════❳"
echo " □ 1. Motion Picture Expert Group-3(.mp3)"
echo " □ 2. Motion Picture Expert Group-2(.mp2)"
echo " □ 3. Motion Picture Expert Group-1(.mp1)"
echo " □ 4. Ogg Vorbis(.ogg)"
echo " □ 5. Advanced Audio Coding(.aac)"
echo " □ 6. Windows Media Audio(.wma)"
echo " □ 7. Free Lossless Audio Codec(.flac)"
echo " □ 8. Apple Lossless Audio Codec(.alac)"
echo " □ 9. WaveForm(.waf)"
echo " □ 10. Pulse Code Modulation(.pcm)"
echo " □ 11. Audio Interchange(.aiff)"
echo " □ 12. Custom Extension(Experimental)"
echo " ■ [B]ack/[R]eturn"
echo " ■ [Q]uit/[E]xit"
read -p " ╚═❲Select❳══➩" aud;
case $aud in
1) while true
      do
      echo
      echo "╔═══════════════════════════╗"
      echo "║  Option 1 selected (.mp3) ║"
      echo "║[C]ancel to go back to menu║"
      echo "╚═══════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format mp3 --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  mp3) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                            fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
2) while true
      do
      echo
      echo "╔═══════════════════════════╗"
      echo "║  Option 2 selected (.mp2) ║"
      echo "║[C]ancel to go back to menu║"
      echo "╚═══════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format mp2 --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  mp2) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
3) while true
      do
      echo
      echo "╔═══════════════════════════╗"
      echo "║  Option 3 selected (.mp1) ║"
      echo "║[C]ancel to go back to menu║"
      echo "╚═══════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format mp1 --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  mp1) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
4) while true
      do
      echo
      echo "╔═══════════════════════════╗"
      echo "║  Option 4 selected (.ogg) ║"
      echo "║[C]ancel to go back to menu║"
      echo "╚═══════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format ogg --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  ogg) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
5) while true
      do
      echo
      echo "╔═══════════════════════════╗"
      echo "║  Option 5 selected (.aac) ║"
      echo "║[C]ancel to go back to menu║"
      echo "╚═══════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format aac --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  aac) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
6) while true
      do
      echo
      echo "╔═══════════════════════════╗"
      echo "║  Option 6 selected (.wma) ║"
      echo "║[C]ancel to go back to menu║"
      echo "╚═══════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format wma  --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  wma) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
7) while true
      do
      echo
      echo "╔═════════════════════════════╗"
      echo "║  Option 7 selected (.flac)  ║"
      echo "║ [C]ancel to go back to menu ║"
      echo "╚═════════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format flac --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  flac) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
8) while true
      do
      echo
      echo "╔═════════════════════════════╗"
      echo "║  Option 8 selected (.alac)  ║"
      echo "║ [C]ancel to go back to menu ║"
      echo "╚═════════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format alac --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  alac) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
9) while true
      do
      echo
      echo "╔═══════════════════════════╗"
      echo "║  Option 9 selected (.waf) ║"
      echo "║[C]ancel to go back to menu║"
      echo "╚═══════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format waf --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  waf) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
10) while true
      do
      echo
      echo "╔═════════════════════════════╗"
      echo "║  Option 10 selected (.pcm)  ║"
      echo "║ [C]ancel to go back to menu ║"
      echo "╚═════════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format pcm --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  pcm) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
11) while true
      do
      echo
      echo "╔═════════════════════════════╗"
      echo "║  Option 11 selected (.aiff) ║"
      echo "║ [C]ancel to go back to menu ║"
      echo "╚═════════════════════════════╝"
      echo -n "Insert link: "
      read down;
       if [ $down > 0 ]
         then
             if [ $down = C ] || [ $down = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
               else
                   youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format aiff --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                                  aiff) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
12) while true
      do
      echo
      echo "╔═════════════════════════════╗"
      echo "║ Option 12 selected (custom) ║"
      echo "║ [C]ancel to go back to menu ║"
      echo "╚═════════════════════════════╝"
      echo -n "Insert link: "
      read down;
      echo -n "Insert extension: "
      read exten;
       if [ $down > 0 ] || [ $exten > 0 ]
         then
             if [ $down = C ] || [ $down = c ] || [ $exten = C ] || [ $exten = c ]
               then
                   echo "Cancelled"
                   sleep 1
                   audio
                    else
                        youtube-dl -o "/sdcard/Download/%(title)s.%(ext)s" --audio-format $exten --extract-audio $down
                             loc=$(find /sdcard/Download)
                             for filename in $loc
                             do
                               ext=${filename##*\.}
                               case "$ext" in
                               $exten) echo "$filename is in the Download folder"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                        sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                     esac
                                                 done
                                       ;;
                                    *) echo "Download failed"
                                       sleep 0.8
                                       echo "Check your connection and try again"
                                       sleep 1
                                       while true
                                       do
                                       echo
                                       echo -n "Would you like to retry(Y/N) or quit(Q/E)?:"
                                       read ask;
                                        case $ask in
                                                    [yY]) echo "Reverting back to audio menu..."
                                                          sleep 1
                                                          audio
                                                          ;;
                                                    [nN]) echo "Returning to menu..."
                                                          sleep 1
                                                          granted
                                                           ;;
                                                    [qQeE]) echo
                                                            echo "Goodbye!"
                                                            sleep 2
                                                        echo "Exiting."
                                                        sleep 0.5
                                                        echo "Exiting.."
                                                        sleep 0.5
                                                        echo "Exiting..."
                                                          sleep 0.5
                                                          clear
                                                        exit
                                                            ;;
                                                         *) echo "Please insert the input correctly!"
                                                             ;;
                                                         esac
                                                     done
                                       ;;
                                   esac
                               done
                             fi
         else
         echo "Please insert it!"
         sleep 0.5
       fi
       done
     ;;
[bBrR]) granted
         ;;
 [qQeE]) while true
         do
         read -p "Are you sure?(Y/N): " sure;
         case $sure in
    [yY]) echo
         echo "Goodbye!"
         sleep 2
         echo "Exiting."
         sleep 0.5
         echo "Exiting.."
         sleep 0.5
         echo "Exiting..."
         sleep 0.5
         clear
         exit
          ;;
    [nN]) echo "Cancelled"
         sleep 1
         audio
         ;;
      *) echo "Please insert it correctly!"
         sleep 1
          ;;
      esac
     done
       ;;
   *) echo "Please insert it correctly!"
       sleep 1
       ;;
esac
done
}
video(){
while true
do
clear
banner
echo
sleep 0.5
echo "  ❲═════════❲Video converting Menu❳═════════❳"
echo " □ 1. Motion Picture Expert Group-4(.mp4)"
echo " □ 2. Audio Video Interleaved(.avi)"
echo " □ 3. Ogv Vorbis(.ogv)"
echo " □ 4. MPEG(.mpeg)"
echo " □ 5. Windows Media Video(.wmv)"
echo " □ 6. QuickTime(.mov)"
echo " □ 7. 3rd Generation Partnership Project(.3gp)"
echo " □ 8. Flash(.flv)"
echo " □ 9. VCD Player(.mpg)"
echo " □ 10. DVD Player(.vob)"
echo " □ 11. Digital Video(.dv)"
echo " □ 12. Advanced System Format(.asf)"
echo " □ 13. Advanced Video Coding High Definition (.avchd)"
echo " □ 14. WebM Player(.webm)[DEFAULT]"
echo " □ 15. Custom Extension(Experimental)"
echo " ■ [B]ack/[R]eturn"
echo " ■ [Q]uit/[E]xit"
read -p " ╚═❲Select❳══➩" vid;
case $vid in
   1)
     ;;
   2)
     ;;
   3)
     ;;
   4)
     ;;
   5)
     ;;
   6)
     ;;
   7)
     ;;
   8)
     ;;
   9)
     ;;
  10)
     ;;
  11)
     ;;
  12)
     ;;
  13)
     ;;
  14)
     ;;
  15)
     ;;
  [bBrR]) granted
         ;;
  [qQeE]) while true
          do
          read -p "Are you sure?(Y/N): " sure;
          case $sure in
    [yY]) echo
         echo "Goodbye!"
         sleep 2
         echo "Exiting."
         sleep 0.5
         echo "Exiting.."
         sleep 0.5
         echo "Exiting..."
         sleep 0.5
         clear
         exit
          ;;
    [nN]) echo "Cancelled"
         sleep 1
         video
         ;;
        *) echo "Please insert it correctly!"
           sleep 1
           ;;
      esac
     done
        ;;
    *) echo "Please insert it correctly!"
       sleep 1
        ;;
esac
done
}
granted(){
while true
do
banner(){
sleep 0.3
echo
echo "        /\        /\  "
echo "       /@ \      / @\  "
echo "      | @@ \    / @@ |         // _____  __  "
echo "      | @@@ |__| @@@ |        // /❏❏❏❏/ /❏/  "
echo "      | @@@      @@@ |       // /❏❏❏\  /❏/___  "
echo "      \/ __\   |__  \/      // ___/❏/ /❏❏❏❏❏/  "
echo "      _| | ■\|\/ ■  |_  [►]// /❏❏❏❏/ /❏/ /❏/  "
echo "      \_ |_| ● |_|  _/   "
echo "       \_    ^     _/ /\_____   "
echo "        _\        /_ /      /_ "
echo "       \_   \/\/   _/\  _    /__  "
echo "       \  v  \/  v  / \/ \     /  "
echo "       /  |  vv  |  \_    \    \  "
echo "       |  \  ||  /  |/__  |    /  "
echo "       \_ /  ||  \ _/  /__/   _\  "
echo "        \_|__||__|_/         _\  "
echo "       /__\||/\||/__\_______/  "
echo
echo "                    -|UNFINISHED|-"
echo "     (✓)Finished (!)Under construct/unfinished"
}

choosing(){
read choose;
  if [ $choose = 1 ]
    then
        video

  elif [ $choose = 2 ]
    then
        audio

  elif [ $choose = 3 ]
    then
        status

  elif [ $choose = 4 ]
    then
        description

  #elif [ $choose = 5 ]
    #then

  #elif [ $choose = 6 ]
    #then

  elif [ $choose = Q ] || [ $choose = q ] || [ $choose = E ] || [ $choose = e ]
    then
        echo "Goodbye!"
        sleep 2
        echo "Exiting."
        sleep 0.5
        echo "Exiting.."
        sleep 0.5
        echo "Exiting..."
        sleep 0.5
       clear
     exit
  else
      echo "Please insert it correctly!"
      sleep 1
   fi
}

clear
banner
sleep 0.5
printf "
     ╔════════════════════════════════════════╗
     ║Author: MrAnonyWolf/K3m0n0-404          ║
     ║Github: https://github.com/MrAnonyWolf  ║
     ╚════════════════════════════════════════╝
"
echo -n "❲══════════════════╣"
m=$(date +%b)
d=$(date +%d)
y=$(date +%Y)
a=$(echo $d $m $y)
if [ $d = 22 ]
  then
      if [ $m = Feb ]
        then
            echo -n "Author's HBD!"
       else
           echo -n $a
         fi
elif [ $m = Feb ]
    then
        if [ $d = 22 ]
          then
              echo -n "Author's HBD!"
          else
              echo -n $a
            fi
else
 echo -n $a
fi
echo "╠══════════════════❳"
echo "            ╔═════════════════════════╗"
echo "            ║ 1.   Video converting(!)║"
echo "            ║ 2.   Audio converting(✓)║"
echo "            ║ 3.   Check URL status(✓)║"
echo "            ║ 4.     Description(!)   ║"
echo "            ║ 5.        Proxy(!)      ║"
echo "            ║ 6.       Credits(!)     ║"
echo "            ╠═════════════════════════╣"
echo "      ╔═════╣      [Q]uit/[E]xit      ║"
echo "      ║     ╚═════════════════════════╝"
echo "      ║"
echo -n "      ╚═❲Choose❳══➩"
choosing
done
}

loc="/data/data/com.termux/files/usr/bin/youtube-dl"
format="/data/data/com.termux/files/usr/bin/ffmpeg"
py="/data/data/com.termux/files/usr/bin/python"

if [ -e $loc ]
 then
     if [ -e $py ]
       then
           granted
       else
           printf "It seems you forgot to install python first. "
           while true
           do
           echo -n "Would you like to install it?(Y/N): "
           read comp;
             case $comp in
                         [Yy] | yes | Yes | yEs | yeS | YEs | YeS | yES | YES)
                          echo "Installing..."
                          sleep 0.5
                          pkg install python
                          echo "Done!"
                          sleep 0.5
                          echo "Now it should have no problem running it"
                          sleep 1
                            if [ -e $format ]
                              then
                                  granted
                              else
                                  printf "Without ffmpeg installed, it would have issues on formatting the video. "
                                  while true
                                  do
                                  echo -n "Would you like to install it?(Y/N): "
                                  read form;
                                    case $form in
                                                [Yy] | yes | Yes | yEs | yeS | YEs | YeS | yES | YES)
                                                  echo "Installing..."
                                                  sleep 0.5
                                                  pkg install ffmpeg
                                                  echo "Done!"
                                                  sleep 0.5
                                                  echo "All set. Continue running.."
                                                  sleep 1
                                                  granted
                                                   ;;
                                                [Nn] | no | No | nO | NO)
                                                  echo "Installation cancelled"
                                                  sleep 0.6
                                                  echo "Youtube-dl would have limitation with formatting the video. Webm only available"
                                                  sleep 3
                                                  echo "Starting..."
                                                  sleep 1
                                                  granted
                                                   ;;
                                                 *) echo "Please insert input correctly!"
                                                    sleep 1
                                                    ;;
                                                esac
                                            done
                                          fi
                                            ;;
                          [Nn] | no | No | nO | NO)
                                 echo "Installation cancelled"
                                                  sleep 0.6
                                                  echo "Youtube-dl needs python components to work!"
                                                  sleep 3
                                                  echo "Cancelling..."
                                                  sleep 1
                                                  exit
                                                   ;;
                                            *) echo "Please insert input correctly!"
                                                    sleep 1
                                                    ;;
                                                esac
                                            done
                                          fi

elif [ -e $loc ]
    then
        if [ -e $format ]
          then
             granted
         else
           printf "It seems you don't have ffmpeg installed. "
           while true
           do
           echo -n "Would you like to install it?(Y/N): "
           read comp;
             case $comp in
                         [Yy] | yes | Yes | yEs | yeS | YEs | YeS | yES | YES)
                          echo "Installing..."
                          sleep 0.5
                          pkg install ffmpeg
                          echo "Done!"
                          sleep 0.5
                          echo "Now it will able to format the video whether any types of file will available"
                          sleep 1
                            if [ -e $py ]
                              then
                                  granted
                              else
                                  printf "You forgot to install python.. without it, the Youtube-dl will unable to run. "
                                  while true
                                  do
                                  echo -n "Would you like to install it?(Y/N): "
                                  read form;
                                    case $form in
                                                [Yy] | yes | Yes | yEs | yeS | YEs | YeS | yES | YES)
                                                  echo "Installing..."
                                                  sleep 0.5
                                                  pkg install python
                                                  echo "Done!"
                                                  sleep 0.5
                                                  echo "It's working! Starting up.."
                                                  sleep 1
                                                  granted
                                                   ;;
                                                [Nn] | no | No | nO | NO)
                                                  echo "Installation cancelled"
                                                  sleep 0.6
                                                  echo "Youtube-dl needs python components to work!"
                                                  sleep 3
                                                  echo "Cancelling..."
                                                  sleep 1
                                                  exit
                                                   ;;
                                                 *) echo "Please insert input correctly!"
                                                    sleep 1
                                                    ;;
                                                esac
                                            done
                                          fi
                                            ;;
                                [Nn] | no | No | nO | NO)
                                    echo "Installation cancelled"
                                    sleep 0.6
                                    echo "Youtube-dl would have limitation with formatting the video. Webm only available"
                                    sleep 3
                               if [ -e $py ]
                           then
                               echo "Starting..."
                               sleep 1
                               granted
                           else
                               printf "It seems you forgot to install python first. "
                               while true
                               do
                               echo -n "Would you like to install it?(Y/N): "
                               read comp;
                             case $comp in
                                          [Yy] | yes | Yes | yEs | yeS | YEs | YeS | yES | YES)
                                              echo "Installing..."
                                              sleep 0.5
                                              pkg install python
                                              echo "Done!"
                                              sleep 0.5
                                              echo "Now it should have no problem running it except formatting.."
                                              sleep 1
                                              granted
                                              ;;
                                         [Nn] | no | No | nO | NO)
                                                  echo "Installation cancelled"
                                                  sleep 0.6
                                                  echo "Youtube-dl needs python components to work!"
                                                  sleep 3
                                                  echo "Cancelling..."
                                                  sleep 1
                                                  exit
                                                   ;;
                                                 *) echo "Please insert input correctly!"
                                                    sleep 1
                                                    ;;
                                                 esac
                                             done
                                           fi
                                            ;;
                *) echo "Please insert input correctly!"
                      sleep 1
                          ;;
                       esac
                    done
                  fi

 else
     printf "It seems you don't have Youtube-dl installed. "
     while true
     do
     echo -n "Would you like to install it first?(Y/N): "
     read setup;
       case $setup in
                    [Yy] | yes | Yes | yEs | yeS | YEs | YeS | yES | YES)
                     echo "Installing."
                     sleep 0.5
                     echo "Installing.."
                     sleep 0.5
                     echo "Installing..."
                   if [ -e $py ]
                     then
                     curl -s -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl
                     echo "Youtube-dl has been installed!"
                     echo "Activating access to youtube-dl..."
                     chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl
                     youtube-dl --version
                     echo "Done!"
                     sleep 1
                      if [ -e $loc ]
                       then
                           echo "Installation completed!"
                           sleep 2
                           granted
                       else
                         echo "Installation failed!"
                         sleep 1
                         exit
                        fi
                    else
                        echo "Installing python component.."
                         pkg install python
                         echo "Component installed!"
                     sleep 1
                     echo "Installing Youtube-dl..."
                     sleep 0.5
                     echo "This will take a while. Please wait..."
                     curl -s -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl
                     echo "Youtube-dl has been installed!"
                     echo "Activating access to youtube-dl..."
                     chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl
                     youtube-dl --version
                     echo "Done!"
                     sleep 1
                     if [ -e $loc ]
                       then
                           echo "Installation completed!"
                           sleep 2
                           granted
                     else
                         echo "Installation failed!"
                         sleep 1
                         exit
                        fi
                      fi
                         ;;
                    [Nn] | no | No | nO | NO)
                          echo "Installation is terminated.."
                          sleep 1
                          echo "Returning..."
                          sleep 0.5
                          exit
                          ;;
                       *) echo "Please insert input correctly!"
                          sleep 1
                          ;;
                      esac
                  done
                fi
