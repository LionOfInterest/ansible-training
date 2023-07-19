# Ansible Training

In order to get familiar with Ansible and oversee some of its use cases, it is preferred to have many nodes to work with, otherwise one can't appreciate its usefulness.
The easiest way to make it approachable for everyone seems to use Docker, and to manage nodes locally !

Please keep in mind that this training has been designed for Linux users.

## Prerequisites:

- Have docker and docker-compose installed.

## Get started:

1. Run the initialization script `./init_training.sh`. It builds the necessary infrastructure for the training.

2. Once the docker-compose is up and running, execute the command :

```bash
docker-compose exec -it control_node bash
```

3. Place yourself in root's home folder.
```
cd /root
```
