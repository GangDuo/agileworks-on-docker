- [1. はじめに](#1-はじめに)
  - [1.1. 準備](#11-準備)
  - [1.2. コンテナ作成と起動](#12-コンテナ作成と起動)
  - [1.3. AgileWorksをインストールする](#13-agileworksをインストールする)
    - [1.3.1. コンテナに入る](#131-コンテナに入る)
    - [1.3.2. インストーラーを実行する](#132-インストーラーを実行する)
      - [1.3.2.1. 各種ソフトウェアのパス](#1321-各種ソフトウェアのパス)
  - [1.4. AgileWorksアクセス方法](#14-agileworksアクセス方法)
  - [1.5. ライセンス認証](#15-ライセンス認証)
- [2. ASBを利用する](#2-asbを利用する)
  - [2.1. image作成](#21-image作成)
  - [2.2. ASBサーバー設定](#22-asbサーバー設定)

# 1. はじめに
## 1.1. 準備
1. AgileWorksサポートサイトから製品モジュールをダウンロードする。
1. ダウンロードしたAgileWorksを./tomcat/に展開する。
1. [mysql-connector-java-8.0.15.zip](https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-8.0.15.zip)をダウンロードする。
1. ダウンロードしたJDBCドライバを```./tomcat/AgileWorksInstaller/AgileWorksR2121_SDK```に配置する。

## 1.2. コンテナ作成と起動
```bash
docker compose build
docker compose up
```
## 1.3. AgileWorksをインストールする
### 1.3.1. コンテナに入る

```bash
docker exec -it tomcat-container /bin/bash
```

### 1.3.2. インストーラーを実行する
```bash
cd /mnt/
chmod +x -R AgileWorksInstaller
cd /mnt/AgileWorksInstaller/AgileWorksR2121_SDK/
sh installer.sh
```

#### 1.3.2.1. 各種ソフトウェアのパス
|ソフトウェア|パス|
|--|--|
| Java | /opt/java/openjdk |
| Apache | /usr/local/apache |
| Tomcat | /usr/local/tomcat |
| AgileWorks | /usr/local/agileworks |

## 1.4. AgileWorksアクセス方法
[AgileWorks開発環境](http://127.0.0.1/AgileWorks/Broker/EMMA)

## 1.5. ライセンス認証
1. コンテナを再起動する。
1. サポートサイトにアクセスし、開発環境のライセンスキーを取得する。
1. 認証する。

# 2. ASBを利用する
## 2.1. image作成
```bash
docker compose up asb
docker compose exec -it asb sh /mnt/AgileWorksInstaller/AgileWorksR2121_SDK/installer.sh
```

## 2.2. ASBサーバー設定
1. AgileWorks開発環境にアクセスする。
2. ASBサーバー設定のサーバーアドレスに asb を入力し、保存ボタンをクリックする。
