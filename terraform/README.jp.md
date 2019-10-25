# amazon linux2 with terraform
- Docker Composeでpermission deniedを気にせずにterraformを実行できる独立環境を作る

## 重要なことは
- terraformのバージョンを確認する
  - `https://releases.hashicorp.com/terraform` でバージョンを確認して、欲しいバージョンを決める
    - 欲しいバージョンを決めたら、Dockerfileでterraformのバージョンを修正
    ```
      && wget https://releases.hashicorp.com/terraform/0.12.9/terraform_0.12.9_linux_386.zip \
      && unzip terraform_0.12.9_linux_386.zip \
    ```

## ビルド手順
### docker-compose.ymlのところに移動

### volumesの権限調整(linux上でDocker Composeを動かす場合必要)
権限調整に必要なlinuxのuser id、group id、user nameを.envに書く
- `sh setDotEnv.sh`

### Dockerコンテナ作って、バックグラウンドで動かす
- `docker-compose up -d --build`

## 作業コマンド
- Dockerコンテナとの共有ディレクトリは `./workspace` です
  - docker containerの中で作業するなら
    - `docker exec -it terraform /bin/bash`
  - docker containerの外で作業するなら
    - `docker exec terraform xxxxxxxxxxx`

## 結果
![terraformBuild](https://user-images.githubusercontent.com/22050468/67534354-b29ddd00-f708-11e9-9fd7-dc39b6d74b2a.PNG)
