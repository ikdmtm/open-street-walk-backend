# OpenStreetWalk

https://open-street-walk.vercel.app/

## バックエンド

-   ruby: 3.2.1
-   rails: 7.0.4

*   gem
    devise
    devise_token_auth
    rack-cors
    pg
    aws-sdk-s3

*   DB: postgresql
*   storage: S3

## フロントエンド

<https://github.com/ikdmtm/open-street-walk>

-   node: v18.15.0
-   next.js: 13.2.3
-   yarn: 4.0.0

*   パッケージ
    js-cookie: 3.0.1
    leaflet: 1.9.3
    react-leaflet: 4.2.1

## API のエンドポイント

| HTTP verb | パス           | 　コントローラー#アクション　          | 　目的　         |
| --------- | -------------- | -------------------------------------- | ---------------- |
| GET       | /              | pins#index                             | ピンの情報を取得 |
| POST      | /pins          | pins#create                            | ピンを新規作成   |
| DELETE    | /pins/:id      | pins#delete                            | ピンの削除       |
| POST      | /auth/sign_in  | devise_token_auth/sessions#create      | ログイン         |
| DELETE    | /auth/sign_out | devise_token_auth/sessions#destroy     | ログアウト       |
| POST      | /auth          | devise_token_auth/registrations#create | 新規登録         |
| GET       | /users/:id     | users#show                             | マイページ       |

## データベース

![image](https://user-images.githubusercontent.com/77443881/234790573-835c087f-384f-40b0-a0fb-a03813830341.png)
