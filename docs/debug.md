# Debugging

## Things to Check

* RAM utilization -- bgld-arm is very hungry and typically needs in excess of 1GB.  A swap file might be necessary.
* Disk utilization -- The bitgesell blockchain will continue growing and growing and growing.  Then it will grow some more.  At the time of writing, 40GB+ is necessary, bitgesell is relatively small with block size 10x smaller than that of bitcoin.

## Viewing bgld-arm Logs

    docker logs bgld-arm

## Running Bash in Docker Container

*Note:* This container will be run in the same way as the bgld-arm node, but will not connect to already running containers or processes.

    docker run -dp 8454:8454 naftalimurgor/bgld-arm

You can also attach bash into running container to debug running bgld-arm

    docker exec -it bgld-arm bash -l
