## docker コンテナをバックグラウンドで建てるコマンド
docker-compose up -d

## docker コンテナに入るコマンド
docker exec -it python3-8 /bin/sh

## pythonのバージョン確認
python -V

## pipが使っているpythonのバージョン確認
pip -V

## docker コンテナの中か外か確認する方法
docker入力してenterを打ちます。
結果としてが`docker: not found`出たら、dockerコンテナの中です。

## docker コンテナから出る方法
exit入力してenterを打ちます。

## docker コンテナの終了方法
1. docker-compose.ymlがあるディレクトリに移動する
2. docker-compose down

## docker コンテナの状況を確認する方法
1. docker-compose.ymlがあるディレクトリに移動する
2. docker-compose ps