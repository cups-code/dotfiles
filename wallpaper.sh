#!/bin/bash

wallpapers_dir="$HOME/.config/wallpapers"

while true; do
  ls $wallpapers_dir
  read -p "Enter wallpaper name: " wallpaper_file

  if [[ -f "$wallpapers_dir/$wallpaper_file" ]]; then
    >$HOME/.config/hypr/hyprpaper.conf
    preload="$wallpapers_dir/$wallpaper_file"
    wallpaper="$wallpapers_dir/$wallpaper_file"
    echo "preload = $preload" >>~/.config/hypr/hyprpaper.conf
    echo "wallpaper = , $wallpaper" >>~/.config/hypr/hyprpaper.conf
    killall hyprpaper
    nohup hyprpaper &
    rm $(pwd)/nohup.out
    break
  else
    echo "Wallpaper not found. Please try again."
  fi
done
