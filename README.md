# XChainZ Masternode Setup Guide:
Shell script to install a XCZ Masternode on a Linux server running Ubuntu 16.04.

```
wget -q https://raw.githubusercontent.com/axanthics/XCZ-Masternode/master/xchainz_auto.sh
sudo chmod +x xchainz_auto.sh
./xchainz_auto.sh
```
or

```
wget -q https://raw.githubusercontent.com/axanthics/XCZ-Masternode/master/XCZ_masternode.sh
sudo chmod +x XCZ_masternode.sh
./XCZ_masternode.sh
```


Please wait until the Node is fully synced with the XCZ blockchain.
To check the status enter below command.

`xchainz-cli getinfo`

When the Node is fully synced, enter the command below to check masternode status.

`xchainz-cli getmasternodestatus`

Use nano to open the xchainz.conf file

```
# cd
# nano .xchainz/xchainz.conf
```
Copy the masternodeprivkey value as you will need this later for the Privkey field in the desktop wallet's masternode.conf file.

exit the file (Ctrl-X)

# Guide for UpdateXCZ_mn.sh:

```
wget -q https://raw.githubusercontent.com/axanthics/XCZ-Masternode/master/UpdateXCZ_mn.sh
sudo chmod +x UpdateXCZ_mn.sh
./UpdateXCZ_mn.sh
```

 

## Desktop Wallet
After the MN is up and running, you need to configure the desktop wallet accordingly. The steps are as follows:

1. Open the XChainZ Coin Desktop Wallet.
2. Go to RECEIVE and create a New Address: MN1
3. Send 1000 XChainZ to MN1.
4. Wait for 15 confirmations.
5. Go to Tools -> "Debug console - Console"
6. Type the following command: masternode outputs
7. Within the installed XChainZ application directory on your operating system, open the masternode.conf file
(e.g., for mac: nano "Library/Application Support/XChainZ/masternode.conf")
8. Add the following entry:
```
Alias Address Privkey TxHash Output_index
```
Alias: MN1

Address: VPS_IP:PORT  (XCZ port = 14815)

Privkey: Masternode Private Key from earlier

TxHash: First value from Step 6

Output index: Second value from Step 6

9. Save and close the file.
10. Go to Masternode Tab.
11. Click Update status to see your node. If it is not shown, close the wallet and start it again. Make sure the wallet is unlocked.
12. Open Debug Console and type:

```
startmasternode "alias" "0" "MN1"
```
## Usage:

xchainz-cli getinfo
xchainz-cli mnsync status
xchainz-cli masternode status
Also, if you want to check/start/stop XChainZ , run one of the following commands as root:

Ubuntu 16.04:

systemctl status xchainz #To check the service is running.
systemctl start xchainz #To start XChainZ service.
systemctl stop xchainz #To stop XChainZ service.
systemctl is-enabled xchainz #To check whetether XChainZ service is enabled on boot or not.