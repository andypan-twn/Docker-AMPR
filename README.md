# Docker-phpDevEnv
Example for PHP+Apache+Mysql+Redis run on docker

## How to use

1. Install docker on your system.
    
    [docker docs](https://docs.docker.com/install/)

2. copy env file
    ```bash
     $ cp .env.example .env
    ```

3. run on docker
    ```bash
     $ make dev
    ```

4. enjoy!

## Command line

| command line | help                   |
| ------------ | ---------------------- |
| $ make dev   | run container          |
| $ make exec  | go into APP container  |
| $ make del   | delete container       |
