# 環境構築方法

 このファイルと同じディレクトリで、次のコマンドを実行

## 

## 1. Dockerイメージのビルド

- 以下コマンドで、Dockerfileに記載された設定に基いたDockerイメージをビルド

    `docker build -t josim .`

- 次のようなコメントが出てきたらビルド成功

    ```ruby:qiita.rb
    What's Next?
    View a summary of image vulnerabilities and recommendations → docker scout quickvie
    ```

## 2. コンテナの実行
```
docker run -v /Users/kyousuke/Investigation/20240604:/testes -it --entrypoint /bin/bash josim
```
docker run -v $(pwd):/JoSIM -it --entrypoint /bin/bash josim 
## 3. テスト
