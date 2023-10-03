# Team Kakashi

The sensei that helps you learn and build Starknet Dapp superfast. 

Starknet has some of its nomenclature in the japanese culture. So Kakashi, the teacher of Team 7 in Naruto is here to help you build on Starknet just from this source. Since it is assumed you wouldn't need to read any other documentation in other to use this, we will make this as sweet as possible. And we've abstracted all of the scary parts so you find every part of it enjoyable. 

If you find it helpfull, kindly drop a star.


## Installations

Let's start from the least and most important: the package manager. Since we want every part of the experience to be blazingly fast, we'll be using bun and to install that simply run the code below:

```
curl -fsSL https://bun.sh/install | bash
```

## Project Setup

To initialize the template, run:

``` 
git clone https://github.com/WiseMrMusa/kakashi && \
bun install 
```

## Project Installations
This template is made up of different technologies built on Starknet. You only have to install them on your system with these easy commands, everything will work together.

1. Install Katana
   Katana is the local node we'll be deploying our project on. If you have it installed, you can skip it. However, run this command:
    ```bash
    make install katana 
    ```
2. Install Starknet Foundry
    To install Starknet Foundry, run:
    ```bash 
    make install snfoundry 
    ```
3. Install Starkli
    To install starkli, run:
    ```bash
    make install starkli
    ```

## Running Project on Local Node

1. Start Katana:
   ```bash
   make start katana
   ```
2. Create an account from wallet
   ```bash
   make create signer ACC_NO="<NO>"
   ```
   NO: The account number you're creating
   It will request for private key which you can make available from katana
   The password is 1234

## Declare and Deploy Contracts

1. Build the project:
    ```bash
    make build
    ```
2. Declare:
    ```bash
    make declare TARGET_SIERA="<PATH/TO/SIERRA>"
    ```
    Copy the declared hash of the contract
3. Deploy:
   ```bash
   make deploy CLASS_HASH="<CONTRACT_CLASS_HASH>"
   ```

Made in Lagos, Nigeria for the World