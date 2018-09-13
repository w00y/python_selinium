passwd root
apt-get update
dpkg --configure -a
apt-get install nano unzip docker.io python-pip firefox xvfb  python3-pip gedit locate tor -y
pip3 install lxml PySocks stem
wget https://github.com/mozilla/geckodriver/releases/download/v0.21.0/geckodriver-v0.21.0-linux64.tar.gz 
tar -xvf geckodriver-v0.21.0-linux64.tar.gz
rm geckodriver-v0.21.0-linux64.tar.gz
chmod +x geckodriver
cp geckodriver /usr/bin/geckodriver
wget https://www.torproject.org/dist/torbrowser/8.0/tor-browser-linux64-8.0_en-US.tar.xz
tar xvf tor-browser-linux64-8.0_en-US.tar.xz
tor --hash-password 1234
echo -e "ControlPort 9051\nHashedControlPassword 16:DDA28E1510D3786E60699CD89D361BF41DA855B5ADBC8F4D5DAFD0E8FE\nCookieAuthentication" >> /etc/tor/torrc
service tor restart
