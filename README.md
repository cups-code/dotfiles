## cups' dotfiles.
- all contents in this repo include my `.config` folder and other neat little things
- arch was installed through `archinstall` with multilib repos and nvidia drivers installed

### credits
- the `.zshrc` config file was a slightly modified `.zshrc` file from Dreams of Code, more on [dreamsofautonomy/zensh](https://github.com/dreamsofautonomy/zensh)

### fetch
- theme: catppuccin-gtk (archived)
- icons: papyrus + catppuccin
- fetch-script: fastfetch
- de: gnome (46)
- user: cups@archcups

### package list
#### manual repos
```sh
# These are the manual repos you'll have to download yourself.
- paru # for AUR support
- libinput-config # to fix touchpad scroll bug on GNOME
- zed # optional; if you'd prefer manual over AUR
- auto-cpufreq # helps optimise battery without TLP
- asusctl # only if you have an ASUS laptop
```

#### AUR (Arch User Repository) stuff
```sh
# To get the theming correct, you'll need to install the AURs for Catppuccin.
$ paru -S catppucin-gtk-mocha
$ paru -S catppuccin-cursors-mocha

# You can also get all repository fonts for max font compatibility.
# This is COMPLETELY optional, as it takes quite a bit of storage space with small partitions.
$ paru -S all-repository-fonts
```
#### gnome
```sh
# For GNOME, you'll need `gnome` and `gnome-extra`. These commands will be assuming you're in root. 
# `gnome-tweaks` will be handy for customisation (unless you use gsettings through the CLI).
$ pacman -S gnome gnome-extra gnome-tweaks
```
