# Docker-AMPR
- Apache + fcgid + PHP + Redis + MySQL 直接在 docker 上運行懶人包。
- 使用 [網紅神人等級](https://shazi.info/) 的 [映像檔](https://github.com/shazi7804/docker-apache2-fcgid-worker-php7)。
- [English](https://github.com/andykuen/Docker-AMPR/blob/master/README_EN.md)

## 如何使用

1. 安裝好 Docker
    
    [官方安裝文件](https://docs.docker.com/install/)

2. 複製 env 檔案 (環境變數)
    ```bash
     $ cp .env.example .env
    ```

3. 執行
    ```bash
     $ make dev
    ```

4. 完成了！

P.S. 預設網址: `http://127.0.0.1:8080/`

## 指令說明

| 指令         | 說明                    |
| ------------ | ---------------------- |
| $ make dev   | 執行 Docker-AMPR        |
| $ make exec  | 進入 container 裡面      |
| $ make del   | 解除安裝 Docker-AMPR     |

# 環境參數
| 參數         | 說明                   | 預設值    |
| ----------- | ---------------------- | -------- |
| APP_NAME    | docker container 名稱   | web-php  |
| APP_PORT    | docker port            | 8080     |
| PHP_VERSION | php 版本                | 7.2      |
| REDIS_HOST  | redis host             | web-redis |
| REDIS_PORT  | redis port             | 6379     |
| DB_DATABASE | database 名稱           | example  |
| DB_HOST     | database host          | web-mysql |
| DB_PORT     | database port          | 3306      |
| DB_USERNAME | database 使用者名稱      | root      |
| DB_PASSWORD | database 密碼           | root      |

# 相關範例
## 在 Docker-AMPR 開發 Laravel 相關程式

1. 進入 container 裡面
    ```bash
     $ make exec
    ```

2. 安裝 laravel 相關套件
    ```bash
     $ composer create-project --prefer-dist laravel/laravel blog
    ```

3. 完成!

P.S. 如果想查看 laravel 歡迎畫面，預設網址: `http://127.0.0.1:8080/blog/public`