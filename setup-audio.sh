echo "Setting up bluetooth audio..."
DEVICE=`pactl list | grep '.*bluez_card' | awk '{print $2}'`
echo $DEVICE

read -p "pactl set-port-latency-offset $DEVICE headset-output 50000 -- [y/N]" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
    pactl set-port-latency-offset $DEVICE headset-output 50000
    echo "Restarting Bluetooth service..."
    sudo service bluetooth restart
fi
