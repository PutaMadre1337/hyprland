#!/bin/bash

config_path="$HOME/.config/waybar/"

rm "$config_path"config.jsonc

if [[ "$DESKTOP_SESSION" == "niri" ]]; then
  ln -s "$config_path"niri_config.jsonc "$config_path"config.jsonc
else
  ln -s "$config_path"hyprland_config.jsonc "$config_path"config.jsonc
fi

waybar
