FROM tomcat:9.0.85-jdk8-temurin-jammy
COPY ./server.xml /usr/local/tomcat/conf/

RUN apt-get update && apt-get install -y --no-install-recommends \
    locales \
    sudo \
 && locale-gen ja_JP \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# 理由：AgileWorksインストーラー実行で起きるエラーを回避するため
RUN mkdir /usr/local/apache
