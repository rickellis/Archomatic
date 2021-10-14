#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__|
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo -e "\nINSTALLING AUR SOFTWARE\n"
# You can solove users running this script as root with this and then doing the same for the next for statement. Howerver I will leave this up to you.

echo "CLOING: YAY"
cd ~
git clone "https://aur.archlinux.org/yay.git"
cd ${HOME}/yay
makepkg -si --noconfirm



PKGS=(
'brave-bin' # Brave Browser
'dxvk-bin' # DXVK DirectX to Vulcan
'github-desktop-bin' # Github Desktop sync
'mangohud' # Gaming FPS Counter
'mangohud-common'
'ocs-url' # install packages from websites
'zoom' # video conferences
)


for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

echo -e "\nDone!\n"