# QUELCODE データベース課題

## ディレクトリ解説

```
quelcode-php
├── db ....................... 作成した課題の提出場所
├── mysql5.7
│   ├── mysql .................. 起動すると作られる。データ永続化用
│   ├── mysqlvolume ............ mysqlコンテナにマウントされる。ホストとのファイル受け渡し用
│   └── my.cnf ................. mysqlコンテナの設定ファイル
│
├── .gitignore
├── docker-compose.yml
└── README.md
```

## データベース情報

MySQL バージョン 5.7.x

## phpMyAdmin 接続方法

Docker を立ち上げた後以下のアドレスにアクセスする

http://localhost:10281
