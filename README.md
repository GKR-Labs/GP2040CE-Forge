# GP2040CE-forge

A container to simplify the compilation of [GP2040-CE](https://gp2040-ce.info) on GNU/Linux


## Getting the image

### Building from source

```bash
git clone https://github.com/GKR-Labs/GP2040CE-forge.git
cd GP2040CE-forge
docker build --tag gkr-labs/gp2040ce-forge .
```

## Running

```bash
docker run --rm -it -v $PWD/GP2040-CE:/root/GP2040-CE gkr-labs/gp2040ce-forge
```
