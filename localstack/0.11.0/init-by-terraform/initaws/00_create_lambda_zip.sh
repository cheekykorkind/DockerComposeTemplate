#!/bin/sh

docker exec pip_installer /bin/sh -e -c "
apk add zip terraform

echo 'install pip package'
cd ./hello_world
pip install -t ./packages -r requirements.txt
zip -r9 lambda.zip .

echo 'Go to main.tf directory'
cd ../

terraform init

echo 'LAMBDA_ZIP_PATH from pip-installer container environment variable'
echo \$LAMBDA_ZIP_PATH

terraform apply -auto-approve -var="lambda_zip_path=\$LAMBDA_ZIP_PATH"

exit
"

docker stop pip_installer
docker rm pip_installer