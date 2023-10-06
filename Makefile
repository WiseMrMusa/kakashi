include .env.local

use-env:
	echo ${STARKNET_ACCOUNT}


start katana:
	katana --accounts 3 --seed 0 --gas-price 250

build:
	cd ./packages/snfoundry/ && \
	scarb build

declare:
	cd ./packages/snfoundry/ && \
	starkli declare \
	$(TARGET_SIERA) \
	--compiler-version 2.1.0 --rpc ${STARKNET_RPC} \
	--account ${STARKNET_ACCOUNT} \
	--keystore ${STARKNET_KEYSTORE}


deploy:
	cd ./packages/snfoundry/ && \
	starkli deploy $(CLASS_HASH) \
	--rpc ${STARKNET_RPC}  \
	--account ${STARKNET_ACCOUNT} \
	--keystore ${STARKNET_KEYSTORE}
	# starkli deploy $(CLASS_HASH) $(CTOR_ARGS) \

test:
	cd ./packages/snfoundry/ && \
	snfoundry

install bun:
	curl -fsSL https://bun.sh/install | bash

install katana:
	mkdir ~/.dojo && cd ~/.dojo
	git clone https://github.com/dojoengine/dojo
	cd dojo
	cargo install --path ./crates/katana --locked --force

install snfoundry:
	curl -L https://raw.githubusercontent.com/foundry-rs/starknet-foundry/master/scripts/install.sh | sh

install starkli:
	curl https://get.starkli.sh | sh

create signer:
	cd ./packages/snfoundry/ && \
	starkli signer keystore from-key ./starkli-katana/katana_account$(ACC_NO).json