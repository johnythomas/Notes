#install rsync
sudo apt-get install rsync
#upload file using rsync to the server
rsync -v -e ssh file_to_be_uploaded username@example.com:~/path_to_save_file

#install monokai theme for terminal
git clone git://github.com/pricco/gnome-terminal-colors-monokai.git
cd gnome-terminal-colors-monokai
./install.sh

#grep
grep -rni "expression" .

#list all processes
ps -A

#list processes of a user
ps -u username --forest

#find the size of a folder
du -sh



