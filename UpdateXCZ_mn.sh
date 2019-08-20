#/bin/bash

echo "We will update your XChainZ Masternode right now" 
sudo apt-get -y install unzip
xchainz-cli stop
rm -rf /usr/local/bin/xchainz*
mkdir XCZUpdated_1.0.0.0
cd XCZUpdated_1.0.0.0
wget https://github.com/axanthics/xcz/releases/download/v1.0.0/XChainZd-Ubuntu-16.04.tar.gz
tar xzvf XChainZd-Ubuntu-16.04.tar.gz
mv xchainzd /usr/local/bin/xchainzd
mv xchainz-cli /usr/local/bin/xchainz-cli
chmod +x /usr/local/bin/xchainz*
rm -rf ~/.xchainz/blocks
rm -rf ~/.xchainz/chainstate
rm -rf ~/.xchainz/peers.dat
cd ~/.xchainz/
wget https://github.com/axanthics/xcz/releases/download/v1.0.0/bootstrap.zip
unzip bootstrap.zip
cd ..
cd XCZUpdated_1.0.0.0
xchainzd -daemon
sleep 10
xchainz-cli addnode 45.32.200.81 onetry
xchainz-cli addnode 155.138.216.95 onetry
xchainz-cli addnode 207.246.121.229 onetry
xchainz-cli addnode 144.202.58.202 onetry
xchainz-cli addnode 144.202.121.189 onetry
xchainz-cli addnode 104.207.158.86 onetry
xchainz-cli addnode 144.202.108.44 onetry
xchainz-cli addnode 199.247.14.127 onetry
echo "Masternode Updated!"
echo "Please wait for few minutes and start your Masternode again on your Local Wallet"
