#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import os


def run_menu():
    keys = (
        "\uf186   Suspend",
        "\uf021   Reboot",
        "\uf021   UEFI Firmware",
        "\uf011   Shutdown",
    )

    actions = (
        "systemctl suspend",
        "systemctl reboot",
        "systemctl reboot --firmware-setup",
        "systemctl poweroff",
    )

    options = "\n".join(keys)
    choice = (
        os.popen(
            "echo -e '"
            + options
            + "' | wofi --show dmenu --prompt '' --width 600 --height 350 --style ~/.config/wofi/style-nosearch.css"
        )
        .readline()
        .strip()
    )
    if choice in keys:
        os.popen(actions[keys.index(choice)])


run_menu()

