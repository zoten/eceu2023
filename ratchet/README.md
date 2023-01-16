# Ratchet

Ratchet is an application created for Elixir Conf EU 2023, precisely for [this talk](https://www.elixirconf.eu/participants/luca-dei-zotti/).

## How To

### docker-compose

You can spin up the entire mini-stack using

``` bash
docker-compose up -d
```

This will create two instances of `ratchet`, connected in a cluster via hardcoded configuration.

You can then connect to `ratchet0`'s instance using `bash0.sh` script (make sure it is executable)

``` bash
# chmod + x bash0.sh
./bash0.sh
```
