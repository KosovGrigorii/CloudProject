#!/bin/bash

npm version patch;
aws s3api delete-objects --endpoint-url https://storage.yandexcloud.net --bucket movies-website-b1ghbrp8fpp59522per5 --delete "$(aws s3api list-object-versions --endpoint-url https://storage.yandexcloud.net --bucket movies-website-b1ghbrp8fpp59522per5 --query '{Objects: Versions[].{Key: Key, VersionId: VersionId}}' --max-items 1000)";
aws --endpoint-url=https://storage.yandexcloud.net s3 cp --recursive . s3://movies-website-b1ghbrp8fpp59522per5;

