
PORT=22

sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "Setting up UFW rules for port $PORT and for $(hostname -I)"
for IP in $(hostname -I)
do
	IPMASK=$(echo $IP | awk -F"." '{print $1"."$2"."$3".0/24"}')
	sudo ufw allow from $IPMASK to any port $PORT
done
