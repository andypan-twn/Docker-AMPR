# Docker-AMPR
Example for Apache+Mysql+PHP+Redis run on docker

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

## for Laravel example

1. go into container
    ```bash
     $ make exec
    ```

2. init composer
    ```bash
     $ composer init -q
    ```

3. request laravel
    ```bash
     $ composer create-project --prefer-dist laravel/laravel blog
    ```

4. enjoy!<br>
    your URL like: `http://127.0.0.1:8080/blog/public`