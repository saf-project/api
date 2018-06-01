#!/bin/sh
 
#FIRST_ARGUMENT="$1"
#echo "Hello, world $FIRST_ARGUMENT!"
export PATH=$PATH:$GOPATH/bin
#protoc -I saf/  -I /Users/agoussia/GoglandProjects/src/github.com/googleapis   saf/ce/usa/v1a/manager_ce.proto --go_out=plugins=grpc:saf
protoc  saf/ce/usa/v1a/manager_ce.proto -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/empty.proto  -I. --go_out=plugins=grpc:$GOPATH/src


#--go_out=plugins=grpc:.