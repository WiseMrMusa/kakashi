install-katana:
	mkdir ~/.dojo && cd ~/.dojo
	git clone https://github.com/dojoengine/dojo
	cd dojo
	cargo install --path ./crates/katana --locked --force

start-katana:
	katana --accounts 3 --seed 0 --gas-price 250

build:
	cd ./packages/snfoundry/ && \
	scarb build

deploy:
	cd ./packages/snfoundry/ && \
	cargo run --bin deploy

test:
	cd ./packages/snfoundry/ && \
	scarb test