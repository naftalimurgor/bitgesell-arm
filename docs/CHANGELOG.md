# `bgld-arm` changelog 

## `v0.1.11` `BitcoinCore` sync - 18/05/2024

Changes:

- Synced with Bitcoin core upto 2023 - See [`v0.1.11` release notes](https://github.com/BitgesellOfficial/bitgesell/releases/tag/0.1.11)

### How to get started:

The image can be built from the `Dockerfile` by running:

        docker build . -t bgld-arm

A recommended security practice is to add an additional unprivileged user to run the daemon as on the host. For example, as a privileged user, run this on the host:

        useradd bgld-arm

To build an image which uses this unprivileged user's id and group id, run:

        docker build --build-arg USER_ID=$( id -u bgld ) --build-arg GROUP_ID=$( id -g bgld-arm ) .

Now, when the container is run with the default options, the bgld process will only have the privileges of the bgld user on the host machine. This is especially important for a process such as bgld-arm which runs as a network service exposed to the internet.

## Initial release
- Initial release is based on `0.1.9` release

See release notes of [ Bitgesell Release 0.1.9](https://github.com/BitgesellOfficial/bitgesell/releases/tag/0.1.9)