# NYXT-HYPRLAND RICE

This is my first ever repo and my first ever readme! this is my actual hyprland ricing stuff for my laptop let me know if you like it!

## Dependencies

- **Window Manager**: [Hyprland](https://github.com/hyprwm/Hyprland)
- **Compositor**: Wayland
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)
- **Launcher**: [Wofi](https://hg.sr.ht/~scoopta/wofi)
- **Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Notifications**: [Mako](https://github.com/emersion/mako)
- **Color Scheme Generator**: [Pywal16](https://github.com/adi1090x/pywal16)
- **System information**: [fastfetch](https://github.com/fastfetch-cli/fastfetch/releases)

## Screenshots

![Desktop Screenshot](.config/screen/image.png)

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/nyxtsystem/nyxthyprland
    cd nyxthyprland
    ```
   **Install the required dependencies:**
2. for **Arch based** distro!
    ```bash
    sudo pacman -Syu
    sudo pacman -S hyprland kitty wofi waybar mako zsh ttf-jetbrains-mono ttf-jetbrains-mono-nerd swww fastfetch
    yay -S python-pywal16
    ```
   for **Ubuntu/Debian based** distro! *must be Ubuntu 23.04+ or Debian 12+*
    ```bash
    sudo apt install hyprland kitty wofi waybar mako zsh jetbrains-mono-fonts swww fastfetch
    pip3 install pywal
    ```
   for **Fedora based** distro! *must be Fedora 38+*
    ```bash
    sudo dnf install hyprland kitty wofi waybar mako zsh jetbrains-mono-fonts swww fastfetch
    pip3 install pywal
    ```
3.. Copy the config files to their respective locations:
    ```
    cp -r .config/* ~/.config/
    ```
    
4. Update the Waybar and Wofi configuration:
    If Waybar and Wofi configuration references a CSS file like:
    ```
    @import "/home/nice/.cache/wal/colors-waybar.css";
    ``` 
    make sure to replace "nice" with your actual username.

5. Restart your session and enjoy your new setup!

## Customization

Feel free to config my rice `~/.config` directory to suits yourself however you like!

**Enjoy!!!!!!!!!**
