# set up the temp directory
cd /tmp
mkdir steam
mkdir steaminst
mkdir steamtmp

# set up symlinks so it doesn't install in 
# the networked home directory
ln -s /tmp/steaminst /home/rnbhatt/.local/share/Steam
ln -s /tmp/steam /home/rnbhatt/.steam

# download and unpack steam
cd steamtmp
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
ar x steam.deb
tar -xf control.tar.gz
mkdir data
tar -xf data.tar.xz -C data

# launch the steam installer
cd data/usr/bin
./steam

