#!/bin/sh

notify-send "Wi-Fi Connection" "Searching for available networks..."

bssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | bemenu -i -l 11 -p "" --fn "JetBrains Mono 14" --line-height 10 --tb "#285577" --hb "#285577" --tf "#eeeeee" --hf "#eeeeee" --nf "#bbbbbb" | cut -d' ' -f1)
password=$(echo "" | bemenu -i -l 11 -p "Password:" --fn "JetBrains Mono 14" --line-height 30 --tb "#285577" --hb "#285577" --tf "#eeeeee" --hf "#eeeeee" --nf "#bbbbbb")
nmcli device wifi connect "$bssid" password "$password"

# Check the return code of nmcli to determine if the connection was successful
if [ $? -eq 0 ]; then
  notify-send "Wi-Fi Connection" "Successfully connected to $bssid"
else
  notify-send "Wi-Fi Connection" "Failed to connect to $bssid"
fi
