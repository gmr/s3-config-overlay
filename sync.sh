#!/bin/sh
if test -z "$1" -o -z "$2"
then
  echo "Usage: s3-config-overlay s3bucket/path destination"
  exit 1
fi
echo "aws s3 sync s3://$1 $2"
mkdir -p $2
aws s3 sync s3://$1 $2
touch $2/.complete
