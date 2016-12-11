#install rsync
sudo apt-get install rsync
#upload file using rsync to the server
rsync -v -e ssh file_to_be_uploaded username@example.com:~/path_to_save_file

# install monokai theme for terminal
git clone git://github.com/pricco/gnome-terminal-colors-monokai.git
cd gnome-terminal-colors-monokai
./install.sh

# grep
grep -rni "expression" .

# list all processes
ps -A

# list processes of a user
ps -u username --forest

# find the size of a folder
du -sh
#find directories and their sizes
du -csh *


# Find out about Linux Distribution Name and Version
cat /etc/*-release
lsb_release -a

# Find out about kernel version
uname -mrs

# show USB Devices
lsusb

# show the list of input devices
xinput list

# disable an input device(0 to disable and 1 to enable)
xinput set-prop device_Id "Device Enabled" 0

# install .deb file
sudo dpkg -i /path/to/deb/file
sudo apt-get install -f

# find the network card
lspci | awk '/[Nn]et/ {print $1}' | xargs -i% lspci -ks %
lspci | grep -i net
