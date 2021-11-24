#!/bin/sh

# XFCE Power Manager
xfce4-power-manager &
# Logitech MX Master 3 software
solaar -w hide &
# Corsair accessories software
ckb-next -b &
# 1Password client
1password --silent &
# NetworkManager applet
nm-applet &
# PulseAudio systray
pasystray &
# ncspot - Spotify cli
urxvt -e ncspot &
