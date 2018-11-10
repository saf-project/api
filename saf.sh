#!/bin/sh
 
#FIRST_ARGUMENT="$1"
#echo "Hello, world $FIRST_ARGUMENT!"
export PATH=$PATH:$GOPATH/bi
## util----------
protoc  saf/util/Ack.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Address.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Date.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Empty.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Header.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/util/Timestamp.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##base---------
protoc  saf/base/Engagement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/Entity.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/Transaction.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/base/Participant.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##roles---------
protoc  saf/roles/Shipper.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/roles/ShippingLine.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/roles/Exporter.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/roles/Customs.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/roles/Consignee.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##carriage##-------------------
####engagements
protoc  saf/carriage/engagements/ContractCarriagePortToPortStraightEng.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####messages
protoc  saf/carriage/messages/BookingAcknowledgement.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/messages/CarriageRate.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/messages/EmptyRelease.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/messages/OriginalBillLading.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/messages/ShipperLetterInstruction.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####transactions
protoc  saf/carriage/transactions/ArrivalNoticeTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/BookingAcknowledgementTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/CarriageRateTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/EmptyReleaseTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/EmptyReturnTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/ExportBookingTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/FreightPaymentTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/GetCarriageRateTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/GetCarriageRateTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/OriginalBillLadingTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/ShipperLetterInstructionTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/ShippingInstructionTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/carriage/transactions/VGMTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
##exportdeclaration##-------------
####engagements
protoc saf/exportdeclaration/engagements/CustomsExportDeclarationEng.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####messages
protoc  saf/exportdeclaration/messages/EDShipperConfirmation.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/exportdeclaration/messages/ExportDeclaration.proto  -I. --go_out=plugins=grpc:$GOPATH/src
####transactions
protoc  saf/exportdeclaration/transactions/EDExporterConfirmationTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/exportdeclaration/transactions/EDShipperConfirmationTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/exportdeclaration/transactions/ExportDeclarationTxn.proto  -I. --go_out=plugins=grpc:$GOPATH/src
#### trucking-----------
##engagements
##messages
##transactions

#### tba-----------
protoc  saf/tba/Container.proto  -I. --go_out=plugins=grpc:$GOPATH/src

##services------------
protoc  saf/services/ShipperSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/services/ShippingLineSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/services/ExporterSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/services/CustomsSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src
protoc  saf/services/ConsigneeSvc.proto  -I. --go_out=plugins=grpc:$GOPATH/src