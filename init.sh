pkill dpkg
apt-get update
dpkg --configure -a
apt --fix-broken install -y
locale-gen en_US.UTF-8
passwd root
echo "curl ipinfo.io/ip" >> /usr/bin/ii && chmod +x /usr/bin/ii
echo "clear && nc -lvp \$1" >> /usr/bin/lll && chmod +x /usr/bin/lll
echo -e "clear\necho\necho\ncurl --upload-file \$1 https://transfer.sh/\$1;echo ''\n" > /usr/bin/uu && chmod +x /usr/bin/uu
echo "" >  /etc/ssh/sshd_config
wget https://raw.githubusercontent.com/cr00w/t00l/master/sshd_config
cat sshd_config  >>  /etc/ssh/sshd_config
rm /root/.ssh/authorized_keys
mkdir -p ~/.ssh
chmod 700 ~/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmdT+QanBnkH2YpKbtUsXoEC+UqqQvtAzJypNpbkhGqEH57nHw2VWxhKoRJkDTy2CepxDevfAcbJfqVp2I3e7RXl7fYtm2NTVcfrDRVes6b3M4T374plKEmbOvXTZCwjid0CpBm9FBf2L7E0ngP1j82NWm1s3HDvnwWExUzVQTa60OF6A45cDtn81egeI2v5Xq3suM8gSqWG2a77JV0VuAhGLhl+V5Gpyq2NBKFNWD3f47OuZFQPPfU0Rt68GKQrRH7CTAZJiB9BRJravUpaHE5m/EXGq025NcVgXiNzfAdbE1tq7uX0vWkJcSOx/HJtiWgjyvPE4pNiGEOeoOviD/ root@kali' >>  ~/.ssh/authorized_keys
echo "export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> ~/.bashrc
chmod 600 ~/.ssh/authorized_keys
service ssh restart
apt-get install nano unzip docker.io python-pip firefox xvfb -y
docker run -d --name uxrdp2 --hostname docker-selinenium --shm-size 1g -p 2222:22 -p 3389:3389 -p 5555:5555 danielguerra/ubuntu-xrdp
ip=$(curl -s ipinfo.io/ip)
clear

echo "rdesktop -g 1280x890" $ip
echo "ssh ubuntu@"$ip "-p 2222"
