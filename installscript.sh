# Downloading everything needed
sudo pacman -S i3-wm i3-gaps i3lock dmenu network-manager-applet acpi neofetch lolcat i3status nitrogen pavucontrol git
git clone https://github.com/e1fy/config/
# Starts to work
cd config
convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) 1.png fix1.png
convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) 2.png fix2.png
if [ ! -d "$DIRECTORY" ]; then
  mkdir /home/$USER/Documents
fi
mkdir /home/$USER/Documents/pics
mv 1.png /home/$USER/Documents/pics;mv 2.png /home/$USER/Documents/pics
mv i3cfg /home/$USER/.config/i3/config
mv .bashrc /home/$USER/.bashrc
source /home/$USER/.bashrc
echo "bindsym $mod+x exec i3lock -i /home/$USER/Documents/pics/fix2.png" >> /home/$USER/.config/i3/config
echo "done please chose your background wallpaper"
nitrogen
