#! /bin/bash
while :
do
    #notify-send Warning "Touchscreen is restarting for 0.5 second"
    xinput disable "FTSC1000:00 2808:1015"
    sleep 0.5
    xinput enable "FTSC1000:00 2808:1015"
    #notify-send Warning "The next touchscreen restart is in 60 seconds"
    sleep 60
done

