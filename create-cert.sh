read -p "Server IP: " address

openssl genrsa -des3 -passout pass:dummy -out $address-self-signed.key 2048
openssl rsa -passin pass:dummy -in $address-self-signed.key -out $address-self-signed.key

openssl req -new -key $address-self-signed.key -out $address-self-signed.csr -subj "/CN=$address (self-signed)"

echo "subjectAltName = IP:$address" >> $address-self-signed.txt
openssl x509 -req -days 365 -in $address-self-signed.csr -signkey $address-self-signed.key -out $address-self-signed.crt -extfile $address-self-signed.txt 