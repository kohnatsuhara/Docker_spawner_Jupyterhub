# Docker spawner Jupyterhub

## dockerのバージョン
- Docker version 24.0.2, build cb74dfc
- Docker Compose version v2.18.1
    - Docker Composeはv2.0.0以上を利用してください

## Docker内使用環境
- 使用イメージ：jupyterhub/jupyterhub:4.0.2
- ログインユーザー用のdockerspawnerで使用するイメージ
    - jupyter/scipy-notebook

## 利用方法
1. 当リポジトリをクローン
2. クローンしたローカルリポジトリにターミナルでアクセス
3. 下記コマンドにて、dockerイメージのビルド＆コンテナの立ち上げ
    - `docker compose up -d --build`
    - コンテナの立ち上げのみ（初回以降）は`docker compose up -d`
4. 3.で立ち上げ後下記コマンドにてコンテナの状態確認
    - `docker compose ps -a`
5. 立ち上がっているのを確認したらブラウザで下記URLにアクセス
    - http://{SERVER_IP}:8000/
    - SERVER_IPは立ち上げ予定の端末IPアドレス
6. ログイン画面下のsign upに飛んでadminユーザーを作成する
    - Username:admin
    - Password:好きなパスワード
    - adminというユーザーが自動的に管理者として登録されます


## 備考
- ユーザー承認画面は以下にアクセス
    - `http://SERVER_IP:8000/hub/authorize`
    - sign upで登録されたユーザーはここで承認しないと利用できない

- パスワード変更は以下にアクセス
    - `http://SERVER_IP:8000/hub/change-password`
    - 各ユーザーアクセスできる？
