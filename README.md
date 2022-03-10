# README

# アプリケーション名
output
# アプリケーション概要
プログラミング学習を始めたばかりの方が簡単にアウトプットでき、エラー解決した際に項目に沿って入力することでまずはアウトプットする行動を習慣化します。
# URL
https://output.herokuapp.com/

# テスト用アカウント
- Basic認証id : admin
- Basic認証パスワード : 2222
- メールアドレス : test@test
- パスワード : test1234

# 利用方法

## エラー解消をアウトプット
---
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う
2. エラー解決投稿ボタンから、エラーメッセージ・言語・エラーが起きた状況・コードを記述・原因を入力し投稿する

## 記事投稿機能
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う
2. 記事投稿ボタンから、タイトル・内容を入力し投稿する 

## 他者の投稿した記事を閲覧する
---
1. トップページを下にスクロールすると一覧を閲覧できる
2. 投稿者名をクリックするとユーザー詳細画面に遷移し、ユーザーが投稿したすべての記事を閲覧できる。
3. 詳細ボタンを押すと記事の詳細を閲覧できる。
4. トップページの検索キーワードを入力し、検索ボタンを押すと検索結果が表示される。

# アプリケーションを作成した背景
プログラミング学習を始めてアウトプットしたいという気持ちがありましたが、マークダウン記法の理解不足・文章の書き方がイメージできず、始めることができないという課題がありました。
プログラミング学習を始めたばかりの方は同様の問題を抱えていると推測し、課題を解決するために項目に沿って入力することで簡単にアウトプットでき、アウトプットを習慣化できるアプリを開発しました。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1BU5pKcVIBkIAev0JQ1tI2f1p8QOh2jysLLdWl0WM1Zg/edit#gid=0

# 実装した機能についての画像やGIfおよび説明
#### 投稿完了後の画面
[![Image from Gyazo](https://i.gyazo.com/95c90727db66c13f572b646a9021f663.jpg)](https://gyazo.com/95c90727db66c13f572b646a9021f663)
# 実装予定の機能
- 参考になりましたボタン
- 投稿フォームのプレビュー機能
- テストコード作成
- article・resolutionテーブルから検索できる機能
- 一覧表示を最新の10件にする機能

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/0e3e19e1a852b80c094822158698bfc8.png)](https://gyazo.com/0e3e19e1a852b80c094822158698bfc8)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/3b52e76eea222f6cd8a95269497ca93a.png)](https://gyazo.com/3b52e76eea222f6cd8a95269497ca93a)
# 開発環境
- フロントエンド
- バックエンド
- インフラ
- テキストエディタ


# 工夫したポイント
- ユーザー登録のみで簡単に投稿でき、投稿フォームは項目を記載し、初めてアウトプットする方も項目にそって入力することでスムーズに投稿できるように工夫しました。
- 入力フォームはマークダウン記法を一部取り入れており、シンタックスハイライトでコードを見やすく、マークダウン記法で画像を埋め込めるようにし、より見やすく簡単に投稿できるようにしました。
- 一覧表示をエラー解決と記事投稿の二つを表示しました。
