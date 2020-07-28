
sudo apt-get install libnotify-bin libpam-google-authenticator fail2ban

sudo service fail2ban status

sudo cp sshrc /etc/ssh/sshrc
sudo chown root:root /etc/ssh/sshrc 
sudo chmod 644 /etc/ssh/sshrc

./check-moduli.sh

# google-authenticator

#CMD='alias ssh="konsoleprofile colors=Solarized; ssh $?; resetcolors;"'
#if [[ !grep "$CMD" $HOME/.zshrc ]]
#then
#    cat $CMD >> $HOME/.zshrc
#if

stat $HOME/.ssh/id_ed25519 > /dev/null 2>&1
if [ $? -eq 1 ]
then
    echo "Creating Ed25519 keys..."
    ssh-keygen -o -a 100 -t ed25519 -f ~/.ssh/id_ed25519 -C $(whoami)@$(hostname)
    ssh-add ~/.ssh/id_ed25519
fi
