# DockerBuild-RaspberryPi-Nginx-ReverseProxy

nginxでローカルでリバースプロキシを立てる
RaspberryPi(64bit)にDockerでPostgreSQLサーバを構築

## 環境
- kernel：Linux ホスト名 5.15.32-v8+ #1538 SMP PREEMPT Thu Mar 31 19:40:39 BST 2022 aarch64 GNU/Linux
- OS：Debian GNU/Linux 11 (bullseye)

## Dockerコマンド
```bash
# Docker-composeビルド
$ docker-compose up -d

# Docker コンテナ確認
$ docker ps

# Docker イメージ確認
$ docker images

# Docker コンテナの中に入る
$ docker exec -it [コンテナID] bash

# 起動しているコンテナをdokcerイメージから再ビルド
$ docker-compose up -d --build --force-recreate

# dokcer-composeでの一括削除（滅びの呪文）
$ docker-compose down --rmi all --volumes --remove-orphans
```

## ブラウザからのアクセス方法
```js
http://[サーバIP]:8080/dog
http://[サーバIP]:8080/cat
```

## 参考サイト
- [zawawahoge/reverse-proxy](https://github.com/zawawahoge/reverse-proxy)
