# XDCNetwork-Masternode


## How to Setup XDC Network Masternode 

### Method 1:- Setup XDC Network Masternode One-click Installer ###

To qualify for a Masternode on the XDC Network, you need **10,000,000 XDC**


**Operating System**: 

* Apple Mac
* Windows 
* Linux - Ubuntu

**Step 1: Download [XDC Network One-Click Installer](https://xinfin.org/setup-masternode) (to setup Masternode) for Windows, Linux, and Mac OS and install it on your local machine.**

**Step 2: Now Run the One Click Installer, Make sure you read the Terms properly then click on I Agree button.**

* **"C:\Program Files\XinFin-Network"** this will be your destination folder and this **"C:\Users\...\AppData\Roaming\XDCChain"** will contain your Keystore folder.
* Make sure, you create a backup of your Keystore folder.
* Now click on "XinFin Network" One click installer.
* You can see the address of One Click Instaaler in left side, Also you can change the Network.
* For changing the Network, click on "Develop" then select "Network" (XinFin - Main Network/ XinFin Apothem Network)
* You can check the Node status under the **[stats.xinfin.network](http://stats.xinfin.network/)**



https://user-images.githubusercontent.com/92325549/137081568-f1c99c1f-b035-4ef1-8576-04e327056064.mp4



**Step 3: Create a wallet for your Masternode**

* Create your wallet address with Keystore (Preferred). We always recommend to use Keystore for running a Masternode. 
* Enter a strong password while creating the wallet.
* **Don't lose your Keystore file**
* **Don't share it with anyone**  
* **Always take a backup of your Keystore file.**
* **If you lose it, all your funds will get locked.**
* After creating backup, download your Keystore file.
* Now Access your wallet with your Keystore file and enter the password used to create your wallet.
* If you are hosting a Masternode on Testnet then copy the Wallet address and paste it on **[XDC Faucet](https://faucet.apothem.network/)** for the Testnet XDC



https://user-images.githubusercontent.com/92325549/137081588-b644bef6-5b5c-43c6-a703-6459b82db483.mp4



**Step 4: Host your Masternode**

* For hosting the Masternode, you need to copy the private key and login to the Masternode.
* To upload the KYC document, click on "Become a Masternode" 
* Check the KYC criteria, the KYC file should be in pdf format ONLY.
* Once you upload your KYC document, you need to enter the "Coinbase Address".  This can be found in the One Click Installer. Then you can click on the "Apply" button.
* You will receive the following notification **"You have successfully applied for Masternode"**
* You can check the status of your Masternode here: **[master.apothem.network](https://master.apothem.network/)**.




https://user-images.githubusercontent.com/92325549/137086528-4a8c5c44-ce89-4a70-84f6-bc32aac8d681.mp4




---------------------------------

### Method 2 :- Setup XDC Masternode Bootstrap Script ###

Bootstrap Command XinFin Node Setup:- 

```
sudo su -c "bash <(wget -qO- https://raw.githubusercontent.com/XDCFoundation/XDCNetwork-Masternode/main/bootstrap.sh)" root
```

Examples:- 
```
$ sudo su -c "bash <(wget -qO- https://raw.githubusercontent.com/XDCFoundation/XDCNetwork-Masternode/main/bootstrap.sh)" root
[sudo] password for user: 
Please enter your XinFin MasterNode Name :- Demo_Server 
Your Masternode Name is Demo_Server

```



---------------------------------

### Method 3:- Setup XDC Network Masternode Docker ###

**Operating System**: Ubuntu 20.04 64-bit or higher 

Should be facing internet directly with **public IP** & **without NAT**

**Tools**: Docker, Docker Compose(1.27.4+)

Setup (For Ubuntu 20.04 64-bit or higher Operating System) 

**Clone repository**
```
git clone https://github.com/XDCFoundation/XDCNetwork-Masternode.git
```

Enter `XinFin-Node` directory
```
cd XinFin-Node
```


**Step 1: Install docker & docker-compose**
    sudo ./install_docker.sh

**Step 2: Update .env file with details**
Create `.env` file by using the sample - `.env.example`

Enter either your company or product name in the INSTANCE_NAME field.

Enter your email address in CONTACT_DETAILS field.

```
cp env.example .env
nano .env
```

**Step 3: Start your Node**

**For Mainnet**

Run:
```
sudo docker-compose -f docker-services.yml up -d
```

You should be able to see your node listed on the [XinFin Network](https://XinFin.network/) page.
Select Menu **"Switch to TestNet"** for **TestNetwork** and Select **"Switch to LiveNet"** to check **LiveNetwork** Stats. 

Your coinbase address can be found in xdcchain/coinbase.txt file.

To stop the node or if you encounter any issues use:
```
sudo docker-compose -f docker-services.yml down
```
Attach XDC Console:
```
sudo bash xdc-attach.sh
```


**For Testnet**

Run:
```
sudo docker-compose -f apothem-network.yml up -d
```

You should be able to see your node listed on the [Apothem Network] page.
Select **"Switch to LiveNet"** to check **LiveNetwork** Stats and Select **"Switch to TestNet"** for **TestNetwork.**

Your coinbase address can be found in xdcchain/coinbase.txt file.

To stop the node or if you encounter any issues use:
```
sudo docker-compose -f apothem-network.yml down
```

## Troubleshooting


Public discussions on the technical issues, post articles and request for Enhancements and Technical Contributions. 

- [Discord](https://discord.com/invite/KZdD6pkFxp)
- [Telegram](http://bit.do/Telegram-XinFinDev)
- [Reddit](https://www.reddit.com/r/xinfin/)
- [GitHub](https://github.com/XinFinorg)
- [XinFin FAQs](https://howto.xinfin.org/general/faq/) 

