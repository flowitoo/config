# Downloading everything needed
sudo pacman -S i3wm i3gaps dmenu nm-applet acpi neofetch lolcat i3status nitrogen pavucontrol
# Starts to work
cd config
convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) 1.png fix1.png
convert -resize $(xdpyinfo | grep dimensions | cut -d\  -f7 | cut -dx -f1) 2.png fix2.png
mkdir /home/$USER/Documents/pics
mv 1.png /home/$USER/Documents/pics;mv 2.png /home/$USER/Documents/pics
cp i3cfg /home/$USER/.config/i3/config
mv .bashrc /home/$USER/.bashrc
echo "bindsym $mod+x exec i3lock -i /home/$USER/Documents/pics/fix2.png" >> /home/$USER/.config/i3/config
echo "done please chose your background wallpaper"
nitrogen
