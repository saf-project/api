#!/bin/sh
 
#FIRST_ARGUMENT="$1"
#echo "Hello, world $FIRST_ARGUMENT!"
export PATH=$PATH:$GOPATH/bi

## util
protoc  saf/util/Ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Address.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Date.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Empty.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Header.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Timestamp.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##base
protoc  saf/base/Engagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/Entity.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/Transaction.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/Participant.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##shipping

##roles
protoc  saf/shipping/roles/Shipper.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roles/ShippingLine.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roles/Exporter.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roles/Customs.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/roles/Consignee.proto  -I. --go_out=plugins=grpc:$GOPATH/src


##messages
protoc  saf/shipping/messages/BookingAcknowledgement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/messages/CarriageRate.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/messages/EDShipperConfirmation.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/messages/EmptyRelease.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/messages/OriginalBillLading.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/messages/ExportDeclaration.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/messages/ShipperLetterInstruction.proto  -I. --go_out=plugins=grpc:$GOPATH/src


## transactions
protoc  saf/shipping/transactions/ArrivalNoticeTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/BookingAcknowledgementTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/CarriageRateTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/EDExporterConfirmationTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/EDShipperConfirmationTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/EmptyReleaseTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/EmptyReturnTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/ExportBookingTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/ExportDeclarationTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/FreightPaymentTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/GetCarriageRateTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/GetCarriageRateTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/OriginalBillLadingTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/ShipperLetterInstructionTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/ShippingInstructionTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/transactions/VGMTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src


## engagements
protoc  saf/shipping/engagements/ContractCarriagePortToPortStraightEng.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/engagements/CustomsExportDeclarationEng.proto  -I. --go_out=plugins=grpc:$GOPATH/src


##services
protoc  saf/shipping/services/ShipperSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/ShippingLineSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/ExporterSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/CustomsSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/shipping/services/ConsigneeSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src