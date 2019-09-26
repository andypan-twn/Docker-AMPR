# Docker-AMPR
Apache + Mysql + PHP + Redis 直接在 docker 上運行懶人包

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

## 相關範例
### 在 Docker-AMPR 開發 Laravel 相關程式

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