#!/bin/bash

STORAGE_ACCOUNT_NAME=stc2phlbmqs62qg
CONTAINER_NAME=contoso-suites
DIRECTORY_PATH=./src/data

az storage blob upload-batch \
   --account-name $STORAGE_ACCOUNT_NAME \
    --destination $CONTAINER_NAME \
   --source $DIRECTORY_PATH \
   --pattern "*.txt"
