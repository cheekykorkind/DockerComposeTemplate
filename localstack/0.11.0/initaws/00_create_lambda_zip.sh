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

echo 'move lambda.zip'
cd /workspace/sam-lambda/hello_world
cp lambda.zip ${LAMBDA_ZIP_DST}
rm lambda.zip
echo 'rm lambda.zip'