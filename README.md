## 概要
- JoSIMの実行環境

## 環境構築方法

 このファイルと同じディレクトリで、次のコマンドを実行

## 

## 1. Dockerイメージのビルドとコンテナの開始

- 以下コマンドで、Dockerfileに記載された設定に基いたDockerイメージをビルド

    `docker-compose up -d`


- 次のコマンドで確認、画像のような出力があれば成功

    `docker-compose ps`

    ![Architecture diagram](images/docker-compose-check.png)


## 2. コンテナ内に入る
```
docker-compose exec josim /bin/bash
```
