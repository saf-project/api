#!/bin/sh
 
#FIRST_ARGUMENT="$1"
#echo "Hello, world $FIRST_ARGUMENT!"
export PATH=$PATH:$GOPATH/bin
# saf/ce/usa/v1a
####protoc  saf/ce/usa/v1a/manager_ce.proto -I. --go_out=plugins=grpc:$GOPATH/src
####protoc  saf/ce/usa/v1a/eei.proto -I. --go_out=plugins=grpc:$GOPATH/src
####protoc  saf/ce/usa/v1a/itn.proto -I. --go_out=plugins=grpc:$GOPATH/src
# saf/shipment
####protoc  saf/shipment/shipment.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####protoc  saf/shipment/transport.proto  -I. --go_out=plugins=grpc:$GOPATH/src
# saf/util
####protoc  saf/util/date.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####protoc  saf/util/empty.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####protoc  saf/util/engagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####protoc  saf/util/header.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  saf/util/ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##protoc  onlinesale/SaleEngagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/Nodes.proto  -I. --go_out=plugins=grpc:$GOPATH/src


protoc  onlinesale/util/ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/base/participant.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/base/r_app.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/base/transaction.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/base/engagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src

protoc  onlinesale/nodes/buyer.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/nodes/seller.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/nodes/service_registrar.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/nodes/delivery_agent.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/nodes/sales_rep.proto  -I. --go_out=plugins=grpc:$GOPATH/src


protoc  onlinesale/advertising/product_info.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/advertising/product_request.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/advertising/sellers_info.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/advertising/sellers_request.proto  -I. --go_out=plugins=grpc:$GOPATH/src



protoc  onlinesale/sale/sale.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  onlinesale/sale/order.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##protoc  ui/address.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  ui/person.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  ui/ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src