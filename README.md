# bgld for ARM and embedded Devices

<p align="center">
  <img width="300" height="300" src="https://github.com/naftalimurgor/bgld-arm-docker/blob/main/bgl-arm.png">
</p>

Docker image that runs the Bitgesell node on any ARM-based devices (such as RaspberryPI) without having to compile Bitgesell Core from the source for target ARM architecture.

## Requirements

- Single board Computer like Raspberry PI or (Single board computer built with ARM architecture)

- At least 10 GB to store the block chain files (and always growing!)
- At least 500 MB RAM + 1 GB swap file
- A stable internet connection to sync blocks and talk to other nodes
## Setting Up Raspberry PI

- To set up your Raspberry PI 4 follow this [guide](https://www.tomshardware.com/how-to/set-up-raspberry-pi)

## Setup Docker on Raspberry PI 4

- To setup Docker on your Raspberry PI follow this [quick guide](https://www.simplilearn.com/tutorials/docker-tutorial/raspberry-pi-docker)

## Really Fast Quick Start

To get started off quickly, pull the image from DockerHub:

```sh
docker pull naftalimurgor/bgld-arm
```
Run `bgld-arm` instance on your Raspberry PI

```sh
 docker run -dp 8454:8454 naftalimurgor/bgld-arm
```
One liner for Ubuntu 20.04 LTS machines with JSON-RPC enabled on localhost and adds upstart init script:

    curl https://raw.githubusercontent.com/naftalimurgor/bgld-arm-docker/master/bootstrap-host.sh | sh

## Quick Start

1.  Run an instance of Bitegesell node as follows:

        docker run -dp 8454:8454 naftalimurgor/bgld-arm

2.  Verify that the container is running and bgld-arm node is downloading the blockchain

        $ docker ps
        CONTAINER ID   IMAGE                COMMAND   CREATED         STATUS         PORTS                                                 NAMES
        304e5a74a539   naftalimurgor/bgld-arm   "bgld-arm"    5 seconds ago   Up 3 seconds   0.0.0.0:8454->8454/tcp, :::8454->8454/tcp, 8455/tcp   naughty_greider

3.  You can then access the daemon's output thanks to the [docker logs command](https://docs.docker.com/reference/commandline/cli/#logs)

        docker logs -f bgld-arm

4.  Install optional init scripts for upstart and systemd are in the `init` directory.

## Documentation

- Additional documentation in the [docs folder](https://github.com/naftalimurgor/bgld-arm/tree/main/docs).
