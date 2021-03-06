#!/bin/sh

echo 'install pip package'
docker exec pip_installer /bin/sh -e -c "
apk add zip
cd ./hello_world
pip install -t ./packages -r requirements.txt
zip -r9 lambda.zip .
"
docker stop pip_installer
docker rm pip_installer