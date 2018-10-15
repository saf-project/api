#!/bin/sh
 
#FIRST_ARGUMENT="$1"
#echo "Hello, world $FIRST_ARGUMENT!"
export PATH=$PATH:$GOPATH/bi

## util
protoc  saf/util/ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/address.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/date.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/empty.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/header.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/timestamp.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##base
protoc  saf/base/engagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/r_app.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/participant.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/transaction.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##shipping

##apps
protoc  saf/shipping/apps/shipper.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/apps/shipping_line.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/apps/exporter.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/apps/customs.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/apps/consignee.proto  -I. --go_out=plugins=grpc:$GOPATH/src


## transactions
protoc  saf/shipping/transactions/sli/shipper_letter.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/sli/shipper_letter_instruction_txn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/eei/ed.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/eei/ed_txn.proto  -I. --go_out=plugins=grpc:$GOPATH/src

## engagements
protoc  saf/shipping/engagements/cc_ptp_eng.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/engagements/exp_declaration_eng.proto  -I. --go_out=plugins=grpc:$GOPATH/src


##services
protoc  saf/shipping/services/shipper_svc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/shipping_line_svc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/exporter_svc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/customs_svc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/consignee_svc.proto  -I. --go_out=plugins=grpc:$GOPATH/src