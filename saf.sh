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
##roleapps
protoc  saf/shipping/roleapps/shipper.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roleapps/shipping_line.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roleapps/exporter.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roleapps/customs.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roleapps/consignee.proto  -I. --go_out=plugins=grpc:$GOPATH/src

## engagements
protoc  saf/shipping/engagements/cc_ptp.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/engagements/exp_declaration.proto  -I. --go_out=plugins=grpc:$GOPATH/src



## transactions
protoc  saf/shipping/transactions/sli/shipper_letter.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/sli/shipper_letter_instruction_txn.proto  -I. --go_out=plugins=grpc:$GOPATH/src

protoc  saf/shipping/transactions/eei/electronic_export_information.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/eei/export_information_txn.proto  -I. --go_out=plugins=grpc:$GOPATH/src


##protoc  onlinesale/SaleEngagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/Nodes.proto  -I. --go_out=plugins=grpc:$GOPATH/src


##protoc  onlinesale/util/ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/base/participant.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/base/r_app.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/base/transaction.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/base/engagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##protoc  onlinesale/nodes/buyer.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/nodes/seller.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/nodes/service_registrar.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/nodes/delivery_agent.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/nodes/sales_rep.proto  -I. --go_out=plugins=grpc:$GOPATH/src


##protoc  onlinesale/advertising/product_info.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/advertising/product_request.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/advertising/sellers_info.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/advertising/sellers_request.proto  -I. --go_out=plugins=grpc:$GOPATH/src



##protoc  onlinesale/sale/sale.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  onlinesale/sale/order.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##protoc  ui/address.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  ui/person.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##protoc  ui/ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src