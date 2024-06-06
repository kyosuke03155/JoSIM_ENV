# ベースイメージとしてUbuntuを使用
FROM ubuntu:20.04

# 環境変数の設定（タイムゾーン設定を自動化）
ENV DEBIAN_FRONTEND=noninteractive

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    git \
    cmake \
    g++ \
    make \
    tzdata

# タイムゾーンを設定
RUN ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

# JoSIMのソースコードをクローン
RUN git clone https://github.com/JoeyDelp/JoSIM.git /JoSIM

# 作業ディレクトリをJoSIMに変更
WORKDIR /JoSIM

# ビルドディレクトリを作成
RUN mkdir build

# ビルドディレクトリに移動してCMakeを実行
WORKDIR /JoSIM/build
RUN cmake .. && make

# エントリーポイントを設定
ENTRYPOINT ["/bin/bash"]
