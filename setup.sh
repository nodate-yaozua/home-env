read -p "Server IP: " SERVER_IP
read -p "SMB user name: " SMB_USER
read -p "SMB password: " SMB_PASSWORD
read -p "ALSA sink device name: " SINK_DEVICE
read -p "ALSA source device name: " SOURCE_DEVICE

SERVER_IP=$SERVER_IP \
SMB_USER=$SMB_USER \
SMB_PASSWORD=$SMB_PASSWORD \
SINK_DEVICE=$SINK_DEVICE \
SOURCE_DEVICE=$SOURCE_DEVICE \
envsubst < docker-compose.yml.template \
'$SERVER_IP $SMB_USER $SMB_PASSWORD $SINK_DEVICE $SOURCE_DEVICE' \
> docker-compose.yml