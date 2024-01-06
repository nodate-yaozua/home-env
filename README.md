# Fixed directories

```
* /data1
* ../shimmie2
* ../dasyurus
```

# Setup

```
./create-cert.sh
# (optional: download and install .crt)
./setup.sh
# with dummy SMB password
sudo docker compose build
./create-samba-password.sh
# type real SMB password, copy output
./setup.sh
# with SMB password created above

sudo docker compose up -d
```

# Bluetooth Pairing

```
./bluetoothctl

discoverable on
pairing on

some prompts: yes

devices Paired

trust <Address>
```