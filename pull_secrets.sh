#!/bin/bash

export GREETING=`aws ssm get-parameter --name "GREETING" --with-decryption`
export NAME=`aws ssm get-parameter --name "NAME" --with-decryption`

sed -i -e "s/{{greeting}}/$GREETING/g" -e "s/{{name}}/$NAME/g" config.ini
