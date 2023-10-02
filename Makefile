start-katana:
	katana --accounts 3 --seed 0 --gas-price 250

build:
	cd ./packages/snfoundry/ && \
	snfoundry build

deploy:
	cd ./packages/snfoundry/ && \
	snfoundry run --bin deploy

test:
	cd ./packages/snfoundry/ && \
	snfoundry

install-katana:
	mkdir ~/.dojo && cd ~/.dojo
	git clone https://github.com/dojoengine/dojo
	cd dojo
	cargo install --path ./crates/katana --locked --force

install-snfoundry:
	curl -L https://raw.githubusercontent.com/foundry-rs/starknet-foundry/master/scripts/install.sh | sh
