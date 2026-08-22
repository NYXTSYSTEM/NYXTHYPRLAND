# NYXT-HYPRLAND

This is the legacy dots before noctalia switched

## Dependencies

- **Window Manager**: [hyprland](https://github.com/hyprwm/Hyprland)
- **Compositor**: wayland
- **Terminal**: [kitty](https://sw.kovidgoyal.net/kitty/)
- **Launcher**: [wofi](https://hg.sr.ht/~scoopta/wofi)
- **Bar**: [waybar](https://github.com/Alexays/Waybar)
- **Notifications**: [mako](https://github.com/emersion/mako)
- **Color Scheme Generator**: [pywal](https://github.com/dylanaraps/pywal)
- **System information**: [fastfetch](https://github.com/fastfetch-cli/fastfetch/releases)
- **Wallpaper**: [awww](https://codeberg.org/LGFae/awww)

## Screenshots

![Desktop Screenshot](.config/screen/screen1.png)
![Desktop Screenshot](.config/screen/screen2.png)
![Desktop Screenshot](.config/screen/screen3.png)

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/NYXTSYSTEM/NYXTHYPRLAND
    cd NYXTHYPRLAND
    ```
   **Install the required dependencies:**
2. for my dots i uses **Arch based** distro
    ```bash
    sudo pacman -Syu
    sudo pacman -S hyprland kitty wofi waybar mako zsh ttf-jetbrains-mono ttf-jetbrains-mono-nerd awww fastfetch
    yay -S python-pywal16
    ```
    **NOTED for others distro's please uses your pm repository name**
3.. Copy the config files to their respective locations:
    ```
    cp -r .config/* ~/.config/
    ```
    
4. Update the Waybar and Wofi configuration:
    If Waybar and Wofi configuration references a CSS file like:
    ```
    @import "/home/nice/.cache/wal/colors-waybar.css";
    ``` 
    **make sure to replace** "nice" **with your actual username.**

5. Reboot and then you're good to go enjoy your new setup!

## Customization

Feel free to config my rice `~/.config` directory to suits yourself however you like!

**For more polished modular with slight ram increased please check**
[main](https://github.com/NYXTSYSTEM/NYXTHYPRLAND/tree/main)
