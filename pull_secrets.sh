#!/bin/bash

export GREETING=`aws ssm get-parameter --name "GREETING" --with-decryption --query Parameter.Value --output text`
export NAME=`aws ssm get-parameter --name "NAME" --with-decryption --query Parameter.Value --output text`

sed -i -e "s/{{greeting}}/$GREETING/g" -e "s/{{name}}/$NAME/g" config.ini
