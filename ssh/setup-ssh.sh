
sudo apt-get install libnotify-bin libpam-google-authenticator fail2ban

sudo cp sshrc /etc/ssh/sshrc
sudo chown root:root /etc/ssh/sshrc 
sudo chmod 644 /etc/ssh/sshrc

sudo service fail2ban status

./check-moduli.sh

# google-authenticator
