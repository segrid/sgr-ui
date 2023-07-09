#!/bin/bash

yarn --cwd ui install
yarn --cwd ui build
go generate github.com/aerokube/selenoid-ui

go build
./selenoid-ui -allowed-origin="*" -segrid-uri="http://127.0.0.1:8085/segrid"
yarn --cwd ui start