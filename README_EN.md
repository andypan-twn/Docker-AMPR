# Docker-AMPR
- Example for Apache + mod_fcgid + PHP + Redis + MySQL run on docker
- Use [Mr. shazi](https://shazi.info/)'s [image](https://github.com/shazi7804/docker-apache2-fcgid-worker-php7).
- [中文說明](https://github.com/andykuen/Docker-AMPR/blob/master/README.md)

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


# Environment document
| Key         | Help                   | Default   |
| ----------- | ---------------------- | --------- |
| APP_NAME    | docker container name  | web-php   |
| APP_PORT    | docker port            | 8080      |
| PHP_VERSION | php version            | 7.2       |
| REDIS_HOST  | redis host             | web-redis |
| REDIS_PORT  | redis port             | 6379      |
| DB_DATABASE | database name          | example   |
| DB_HOST     | database host          | web-mysql |
| DB_PORT     | database port          | 3306      |
| DB_USERNAME | database username      | root      |
| DB_PASSWORD | database password      | root      |

# Example
## For Laravel framework

1. go into container
    ```bash
     $ make exec
    ```

2. request laravel
    ```bash
     $ composer create-project --prefer-dist laravel/laravel blog
    ```

3. enjoy!<br>
    your URL like: `http://127.0.0.1:8080/blog/public`