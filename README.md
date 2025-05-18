# apollo@phrixus
> local minecraft youtuber runs linux?!
- **If you want to view the old dotfiles, go here**: https://github.com/cups-code/dotfiles-old

https://github.com/user-attachments/assets/b7b29960-f758-433d-a47a-5172bf35af43

## Info
> Below is some information on the desired replicated instance.
- Distribution: Arch Linux (rolling-release)
> Arch Linux was installed through `archinstall` through manual partitioning beforehand, and using the `pre-mounted configuration` option in the script. It was also installed with NVIDIA Drivers (using open kernel modules).
- Display Server: Wayland (due to Hyprland)
- WM, Compositor: Hyprland
- Host: "phrixus"
- AUR Helper: Paru
- GTK: Gruvbox_GTK
- Icons: Gruvbox Plus Dark

## Dependencies
> Dependency versions are based on the latest commit to this README, which was May 18, 2025.

> Versions are not super important, but some configuration files may not work if you are not using the package with the same or higher version.

> If certain dependencies are required for the aliases in .zshrc, you can comment the aliases out. For example, you can comment or delete `alias clock='tty-clock -S -c -t` if you don't plan on installing `tty-clock`.

- **Paru** (2.0.4)
- **Hyprland** (0.49.0)
- *Btop (1.4.3-2)
- Curl (8.13.0)
- Dunst (1.12.2-1)
- *Eza (0.21.3)
- *FastFetch (2.43.0)
- Git (2.49.0)
- Informant (0.6.0)
- Homebrew (4.5.2)
- Hyprspace (see [here](https://github.com/KZDKM/Hyprspace))
- Hyprpaper (0.75.5-1)
- Hyprshot (1.3.0-2)
- Kitty (0.42.0-1)
- *Neovim (0.11.1-2)
- *NvChad (already in this repo (modified for gruvbox), [upstream](https://github.com/NvChad/NvChad))
- *Tty-Clock
- *Starship (1.23.0) <- customises zsh
- Stow (2.4.1)
- *Spicetify (2.40.7)
- Waybar (0.12.0) <- configuration from [here](https://github.com/sane1090x/dotfiles/tree/gruvbox) with a few tweaks
- Wofi (1.4.1)
- *Yazi (25.4.8)
- Zed (0.186.9)
- Zsh (5.9-5)
- *Zoxide (0.97.1)

*<- These are optional dependencies, they are not required for necessary system functions and configuration (but are very useful)

## Usage
> This repository uses `gnu-stow` to store dotfiles and load them on an instance of Arch Linux. See here: https://www.gnu.org/software/stow/

1. Install every (required) dependency with [`paru`](https://github.com/Morganamilo/paru) (install `paru` first)
2. Install `stow` (if you haven't already)
```sh
paru -S stow
```
3. Clone this repository and move into the cloned repo
```sh
git clone https://github.com/cups-code/dotfiles.git
cd dotfiles
```
4. Stow all configuration files
```sh
# WARNING: This sequence of commands will remove all files in .config, please proceed with caution
# If you need to, backup your .config folder
rm -rf ~/.config
stow .
```
OR
```sh
# Delete every config folder `stow` conflicts with
# For example...
rm -rf ~/.config/kitty
# Repeat this sequence until all configuration directories in ~/.config that can be overriden by this repo are removed
# For example, if there is configuration for `kitty` in this repo, you delete `~/.config/kitty`
# Then, when all the folders are removed, run the following command
stow .
```
