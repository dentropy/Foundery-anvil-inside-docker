# foundery-anvil-inside-docker

## Building

``` bash

docker build -f anvil.Dockerfile -t anvil .

```

## Using anvil inside docker

``` bash

docker-compose -f anvil.docker-compose.yml up

```
## Adding custom anvil flags

Checkout [Overview of Anvil - Foundry Book](https://book.getfoundry.sh/anvil/) to get an idea of Anvil's capabilities.

You can update the `entrypoint` inside anvil.docker-compose.yml in order to set a custom mnemonic, account balances, or any other settings you desire.

## Getting additional help for managing enterypoint in anvil.docker-compose.yml

``` bash

docker-compose -f help.docker-compose.yml up

```

## Next Steps

* Link to docs in my public knowledge base
* Publish docker image to public container registry
* Write tutorial on more complex anvil features such as `--dump-state`
* Test [filtering with ethersjs](https://docs.ethers.org/v5/concepts/events/#events--logs-and-filtering)
