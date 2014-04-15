require 'rubygems'
require_relative 'default.rb'
gem 'soap4r'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsNetGate = "https://www.iatspayments.com/NetGate/"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  LiteralRegistry.register(
    :class => CreateCustomerCodeAndProcessCreditCardV1,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessCreditCardV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["invoiceNum", "SOAP::SOAPString", [0, 1]],
      ["ccNum", "SOAP::SOAPString", [0, 1]],
      ["ccExp", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["cvv2", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCustomerCodeAndProcessCreditCardV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessCreditCardV1Response"),
    :schema_element => [
      ["createCustomerCodeAndProcessCreditCardV1Result", ["CreateCustomerCodeAndProcessCreditCardV1Response::CreateCustomerCodeAndProcessCreditCardV1Result", XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessCreditCardV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCustomerCodeAndProcessCreditCardV1Response::CreateCustomerCodeAndProcessCreditCardV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessCreditCardV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardWithCustomerCodeV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardWithCustomerCodeV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]],
      ["invoiceNum", "SOAP::SOAPString", [0, 1]],
      ["cvv2", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardWithCustomerCodeV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardWithCustomerCodeV1Response"),
    :schema_element => [
      ["processCreditCardWithCustomerCodeV1Result", ["ProcessCreditCardWithCustomerCodeV1Response::ProcessCreditCardWithCustomerCodeV1Result", XSD::QName.new(NsNetGate, "ProcessCreditCardWithCustomerCodeV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardWithCustomerCodeV1Response::ProcessCreditCardWithCustomerCodeV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardWithCustomerCodeV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["invoiceNum", "SOAP::SOAPString", [0, 1]],
      ["creditCardNum", "SOAP::SOAPString", [0, 1]],
      ["creditCardExpiry", "SOAP::SOAPString", [0, 1]],
      ["cvv2", "SOAP::SOAPString", [0, 1]],
      ["mop", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardV1Response"),
    :schema_element => [
      ["processCreditCardV1Result", ["ProcessCreditCardV1Response::ProcessCreditCardV1Result", XSD::QName.new(NsNetGate, "ProcessCreditCardV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardV1Response::ProcessCreditCardV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCustomerCodeAndProcessACHEFTV1,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessACHEFTV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["accountNum", "SOAP::SOAPString", [0, 1]],
      ["accountType", "SOAP::SOAPString", [0, 1]],
      ["invoiceNum", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCustomerCodeAndProcessACHEFTV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessACHEFTV1Response"),
    :schema_element => [
      ["createCustomerCodeAndProcessACHEFTV1Result", ["CreateCustomerCodeAndProcessACHEFTV1Response::CreateCustomerCodeAndProcessACHEFTV1Result", XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessACHEFTV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCustomerCodeAndProcessACHEFTV1Response::CreateCustomerCodeAndProcessACHEFTV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCustomerCodeAndProcessACHEFTV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTWithCustomerCodeV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTWithCustomerCodeV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]],
      ["invoiceNum", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTWithCustomerCodeV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTWithCustomerCodeV1Response"),
    :schema_element => [
      ["processACHEFTWithCustomerCodeV1Result", ["ProcessACHEFTWithCustomerCodeV1Response::ProcessACHEFTWithCustomerCodeV1Result", XSD::QName.new(NsNetGate, "ProcessACHEFTWithCustomerCodeV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTWithCustomerCodeV1Response::ProcessACHEFTWithCustomerCodeV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTWithCustomerCodeV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["invoiceNum", "SOAP::SOAPString", [0, 1]],
      ["accountNum", "SOAP::SOAPString", [0, 1]],
      ["accountType", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTV1Response"),
    :schema_element => [
      ["processACHEFTV1Result", ["ProcessACHEFTV1Response::ProcessACHEFTV1Result", XSD::QName.new(NsNetGate, "ProcessACHEFTV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTV1Response::ProcessACHEFTV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardRefundWithTransactionIdV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardRefundWithTransactionIdV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["transactionId", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardRefundWithTransactionIdV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardRefundWithTransactionIdV1Response"),
    :schema_element => [
      ["processCreditCardRefundWithTransactionIdV1Result", ["ProcessCreditCardRefundWithTransactionIdV1Response::ProcessCreditCardRefundWithTransactionIdV1Result", XSD::QName.new(NsNetGate, "ProcessCreditCardRefundWithTransactionIdV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardRefundWithTransactionIdV1Response::ProcessCreditCardRefundWithTransactionIdV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardRefundWithTransactionIdV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTRefundWithTransactionIdV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTRefundWithTransactionIdV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["transactionId", "SOAP::SOAPString", [0, 1]],
      ["total", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTRefundWithTransactionIdV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTRefundWithTransactionIdV1Response"),
    :schema_element => [
      ["processACHEFTRefundWithTransactionIdV1Result", ["ProcessACHEFTRefundWithTransactionIdV1Response::ProcessACHEFTRefundWithTransactionIdV1Result", XSD::QName.new(NsNetGate, "ProcessACHEFTRefundWithTransactionIdV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTRefundWithTransactionIdV1Response::ProcessACHEFTRefundWithTransactionIdV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTRefundWithTransactionIdV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardBatchV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardBatchV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["batchFile", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardBatchV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardBatchV1Response"),
    :schema_element => [
      ["processCreditCardBatchV1Result", ["ProcessCreditCardBatchV1Response::ProcessCreditCardBatchV1Result", XSD::QName.new(NsNetGate, "ProcessCreditCardBatchV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessCreditCardBatchV1Response::ProcessCreditCardBatchV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessCreditCardBatchV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTChargeBatchV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTChargeBatchV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["batchFile", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTChargeBatchV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTChargeBatchV1Response"),
    :schema_element => [
      ["processACHEFTChargeBatchV1Result", ["ProcessACHEFTChargeBatchV1Response::ProcessACHEFTChargeBatchV1Result", XSD::QName.new(NsNetGate, "ProcessACHEFTChargeBatchV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTChargeBatchV1Response::ProcessACHEFTChargeBatchV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTChargeBatchV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTRefundBatchV1,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTRefundBatchV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["batchFile", "SOAP::SOAPBase64", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTRefundBatchV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTRefundBatchV1Response"),
    :schema_element => [
      ["processACHEFTRefundBatchV1Result", ["ProcessACHEFTRefundBatchV1Response::ProcessACHEFTRefundBatchV1Result", XSD::QName.new(NsNetGate, "ProcessACHEFTRefundBatchV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ProcessACHEFTRefundBatchV1Response::ProcessACHEFTRefundBatchV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "ProcessACHEFTRefundBatchV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBatchProcessResultFileV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetBatchProcessResultFileV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["batchId", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBatchProcessResultFileV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetBatchProcessResultFileV1Response"),
    :schema_element => [
      ["getBatchProcessResultFileV1Result", ["GetBatchProcessResultFileV1Response::GetBatchProcessResultFileV1Result", XSD::QName.new(NsNetGate, "GetBatchProcessResultFileV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetBatchProcessResultFileV1Response::GetBatchProcessResultFileV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetBatchProcessResultFileV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

# Begin CustomerLink  

LiteralRegistry.register(
    :class => CreateCreditCardCustomerCodeV1,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCreditCardCustomerCodeV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]],
      ["alternatePhone", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["recurring", "SOAP::SOAPBoolean"],
      ["amount", "SOAP::SOAPString", [0, 1]],
      ["beginDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"],
      ["scheduleType", "SOAP::SOAPString", [0, 1]],
      ["scheduleDate", "SOAP::SOAPString", [0, 1]],
      ["creditCardCustomerName", "SOAP::SOAPString", [0, 1]],
      ["creditCardNum", "SOAP::SOAPString", [0, 1]],
      ["creditCardExpiry", "SOAP::SOAPString", [0, 1]],
      ["mop", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCreditCardCustomerCodeV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCreditCardCustomerCodeV1Response"),
    :schema_element => [
      ["createCreditCardCustomerCodeV1Result", ["CreateCreditCardCustomerCodeV1Response::CreateCreditCardCustomerCodeV1Result", XSD::QName.new(NsNetGate, "CreateCreditCardCustomerCodeV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateCreditCardCustomerCodeV1Response::CreateCreditCardCustomerCodeV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "CreateCreditCardCustomerCodeV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateACHEFTCustomerCodeV1,
    :schema_name => XSD::QName.new(NsNetGate, "CreateACHEFTCustomerCodeV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]],
      ["alternatePhone", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["recurring", "SOAP::SOAPBoolean"],
      ["amount", "SOAP::SOAPString", [0, 1]],
      ["beginDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"],
      ["scheduleType", "SOAP::SOAPString", [0, 1]],
      ["scheduleDate", "SOAP::SOAPString", [0, 1]],
      ["accountCustomerName", "SOAP::SOAPString", [0, 1]],
      ["accountNum", "SOAP::SOAPString", [0, 1]],
      ["accountType", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateACHEFTCustomerCodeV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "CreateACHEFTCustomerCodeV1Response"),
    :schema_element => [
      ["createACHEFTCustomerCodeV1Result", ["CreateACHEFTCustomerCodeV1Response::CreateACHEFTCustomerCodeV1Result", XSD::QName.new(NsNetGate, "CreateACHEFTCustomerCodeV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CreateACHEFTCustomerCodeV1Response::CreateACHEFTCustomerCodeV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "CreateACHEFTCustomerCodeV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCreditCardCustomerCodeV1,
    :schema_name => XSD::QName.new(NsNetGate, "UpdateCreditCardCustomerCodeV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]],
      ["alternatePhone", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["recurring", "SOAP::SOAPBoolean"],
      ["amount", "SOAP::SOAPString", [0, 1]],
      ["beginDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"],
      ["scheduleType", "SOAP::SOAPString", [0, 1]],
      ["scheduleDate", "SOAP::SOAPString", [0, 1]],
      ["creditCardCustomerName", "SOAP::SOAPString", [0, 1]],
      ["creditCardNum", "SOAP::SOAPString", [0, 1]],
      ["creditCardExpiry", "SOAP::SOAPString", [0, 1]],
      ["mop", "SOAP::SOAPString", [0, 1]],
      ["updateCreditCardNum", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCreditCardCustomerCodeV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "UpdateCreditCardCustomerCodeV1Response"),
    :schema_element => [
      ["updateCreditCardCustomerCodeV1Result", ["UpdateCreditCardCustomerCodeV1Response::UpdateCreditCardCustomerCodeV1Result", XSD::QName.new(NsNetGate, "UpdateCreditCardCustomerCodeV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateCreditCardCustomerCodeV1Response::UpdateCreditCardCustomerCodeV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "UpdateCreditCardCustomerCodeV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateACHEFTCustomerCodeV1,
    :schema_name => XSD::QName.new(NsNetGate, "UpdateACHEFTCustomerCodeV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]],
      ["firstName", "SOAP::SOAPString", [0, 1]],
      ["lastName", "SOAP::SOAPString", [0, 1]],
      ["companyName", "SOAP::SOAPString", [0, 1]],
      ["address", "SOAP::SOAPString", [0, 1]],
      ["city", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["zipCode", "SOAP::SOAPString", [0, 1]],
      ["phone", "SOAP::SOAPString", [0, 1]],
      ["fax", "SOAP::SOAPString", [0, 1]],
      ["alternatePhone", "SOAP::SOAPString", [0, 1]],
      ["email", "SOAP::SOAPString", [0, 1]],
      ["comment", "SOAP::SOAPString", [0, 1]],
      ["recurring", "SOAP::SOAPBoolean"],
      ["amount", "SOAP::SOAPString", [0, 1]],
      ["beginDate", "SOAP::SOAPDateTime"],
      ["endDate", "SOAP::SOAPDateTime"],
      ["scheduleType", "SOAP::SOAPString", [0, 1]],
      ["scheduleDate", "SOAP::SOAPString", [0, 1]],
      ["accountCustomerName", "SOAP::SOAPString", [0, 1]],
      ["accountNum", "SOAP::SOAPString", [0, 1]],
      ["accountType", "SOAP::SOAPString", [0, 1]],
      ["updateAccountNum", "SOAP::SOAPBoolean"]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateACHEFTCustomerCodeV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "UpdateACHEFTCustomerCodeV1Response"),
    :schema_element => [
      ["updateACHEFTCustomerCodeV1Result", ["UpdateACHEFTCustomerCodeV1Response::UpdateACHEFTCustomerCodeV1Result", XSD::QName.new(NsNetGate, "UpdateACHEFTCustomerCodeV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UpdateACHEFTCustomerCodeV1Response::UpdateACHEFTCustomerCodeV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "UpdateACHEFTCustomerCodeV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteCustomerCodeV1,
    :schema_name => XSD::QName.new(NsNetGate, "DeleteCustomerCodeV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteCustomerCodeV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "DeleteCustomerCodeV1Response"),
    :schema_element => [
      ["deleteCustomerCodeV1Result", ["DeleteCustomerCodeV1Response::DeleteCustomerCodeV1Result", XSD::QName.new(NsNetGate, "DeleteCustomerCodeV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DeleteCustomerCodeV1Response::DeleteCustomerCodeV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "DeleteCustomerCodeV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomerCodeDetailV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCustomerCodeDetailV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]],
      ["customerCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomerCodeDetailV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCustomerCodeDetailV1Response"),
    :schema_element => [
      ["getCustomerCodeDetailV1Result", ["GetCustomerCodeDetailV1Response::GetCustomerCodeDetailV1Result", XSD::QName.new(NsNetGate, "GetCustomerCodeDetailV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCustomerCodeDetailV1Response::GetCustomerCodeDetailV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCustomerCodeDetailV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

# End CustomerLink

# Begin Report Link

LiteralRegistry.register(
    :class => GetCCJournalCSV_x0020_V1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCCJournalCSV_x0020_V1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCCJournalCSV_x0020_V1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCCJournalCSV_x0020_V1Response"),
    :schema_element => [
      ["getCCJournalCSV_x0020_V1Result", ["SOAP::SOAPBase64", XSD::QName.new(NsNetGate, "GetCCJournalCSV_x0020_V1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardJournalCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardJournalCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardJournalCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardJournalCSVV1Response"),
    :schema_element => [
      ["getCreditCardJournalCSVV1Result", ["GetCreditCardJournalCSVV1Response::GetCreditCardJournalCSVV1Result", XSD::QName.new(NsNetGate, "GetCreditCardJournalCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardJournalCSVV1Response::GetCreditCardJournalCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardJournalCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardJournalV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardJournalV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardJournalV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardJournalV1Response"),
    :schema_element => [
      ["getCreditCardJournalV1Result", ["GetCreditCardJournalV1Response::GetCreditCardJournalV1Result", XSD::QName.new(NsNetGate, "GetCreditCardJournalV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardJournalV1Response::GetCreditCardJournalV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardJournalV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardRejectCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardRejectCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardRejectCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardRejectCSVV1Response"),
    :schema_element => [
      ["getCreditCardRejectCSVV1Result", ["GetCreditCardRejectCSVV1Response::GetCreditCardRejectCSVV1Result", XSD::QName.new(NsNetGate, "GetCreditCardRejectCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardRejectCSVV1Response::GetCreditCardRejectCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardRejectCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardRejectV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardRejectV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardRejectV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardRejectV1Response"),
    :schema_element => [
      ["getCreditCardRejectV1Result", ["GetCreditCardRejectV1Response::GetCreditCardRejectV1Result", XSD::QName.new(NsNetGate, "GetCreditCardRejectV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardRejectV1Response::GetCreditCardRejectV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardRejectV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHJournalCSV_x0020_V1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHJournalCSV_x0020_V1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHJournalCSV_x0020_V1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHJournalCSV_x0020_V1Response"),
    :schema_element => [
      ["getACHJournalCSV_x0020_V1Result", ["SOAP::SOAPBase64", XSD::QName.new(NsNetGate, "GetACHJournalCSV_x0020_V1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTJournalCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTJournalCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTJournalCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTJournalCSVV1Response"),
    :schema_element => [
      ["getACHEFTJournalCSVV1Result", ["GetACHEFTJournalCSVV1Response::GetACHEFTJournalCSVV1Result", XSD::QName.new(NsNetGate, "GetACHEFTJournalCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTJournalCSVV1Response::GetACHEFTJournalCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTJournalCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTJournalV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTJournalV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTJournalV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTJournalV1Response"),
    :schema_element => [
      ["getACHEFTJournalV1Result", ["GetACHEFTJournalV1Response::GetACHEFTJournalV1Result", XSD::QName.new(NsNetGate, "GetACHEFTJournalV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTJournalV1Response::GetACHEFTJournalV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTJournalV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTRejectCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTRejectCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTRejectCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTRejectCSVV1Response"),
    :schema_element => [
      ["getACHEFTRejectCSVV1Result", ["GetACHEFTRejectCSVV1Response::GetACHEFTRejectCSVV1Result", XSD::QName.new(NsNetGate, "GetACHEFTRejectCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTRejectCSVV1Response::GetACHEFTRejectCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTRejectCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTRejectV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTRejectV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTRejectV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTRejectV1Response"),
    :schema_element => [
      ["getACHEFTRejectV1Result", ["GetACHEFTRejectV1Response::GetACHEFTRejectV1Result", XSD::QName.new(NsNetGate, "GetACHEFTRejectV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTRejectV1Response::GetACHEFTRejectV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTRejectV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTReturnCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTReturnCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTReturnCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTReturnCSVV1Response"),
    :schema_element => [
      ["getACHEFTReturnCSVV1Result", ["GetACHEFTReturnCSVV1Response::GetACHEFTReturnCSVV1Result", XSD::QName.new(NsNetGate, "GetACHEFTReturnCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTReturnCSVV1Response::GetACHEFTReturnCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTReturnCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTReturnV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTReturnV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["date", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTReturnV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTReturnV1Response"),
    :schema_element => [
      ["getACHEFTReturnV1Result", ["GetACHEFTReturnV1Response::GetACHEFTReturnV1Result", XSD::QName.new(NsNetGate, "GetACHEFTReturnV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTReturnV1Response::GetACHEFTReturnV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTReturnV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCCPaymentBoxJournalCSV_x0020_V1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCCPaymentBoxJournalCSV_x0020_V1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["from", "SOAP::SOAPDateTime"],
      ["to", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetCCPaymentBoxJournalCSV_x0020_V1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCCPaymentBoxJournalCSV_x0020_V1Response"),
    :schema_element => [
      ["getCCPaymentBoxJournalCSV_x0020_V1Result", ["SOAP::SOAPBase64", XSD::QName.new(NsNetGate, "GetCCPaymentBoxJournalCSV_x0020_V1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardPaymentBoxJournalCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxJournalCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardPaymentBoxJournalCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxJournalCSVV1Response"),
    :schema_element => [
      ["getCreditCardPaymentBoxJournalCSVV1Result", ["GetCreditCardPaymentBoxJournalCSVV1Response::GetCreditCardPaymentBoxJournalCSVV1Result", XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxJournalCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardPaymentBoxJournalCSVV1Response::GetCreditCardPaymentBoxJournalCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxJournalCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardPaymentBoxRejectCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxRejectCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardPaymentBoxRejectCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxRejectCSVV1Response"),
    :schema_element => [
      ["getCreditCardPaymentBoxRejectCSVV1Result", ["GetCreditCardPaymentBoxRejectCSVV1Response::GetCreditCardPaymentBoxRejectCSVV1Result", XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxRejectCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardPaymentBoxRejectCSVV1Response::GetCreditCardPaymentBoxRejectCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardPaymentBoxRejectCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxJournalCSV_x0020_V1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxJournalCSV_x0020_V1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["from", "SOAP::SOAPDateTime"],
      ["to", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxJournalCSV_x0020_V1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxJournalCSV_x0020_V1Response"),
    :schema_element => [
      ["getACHEFTPaymentBoxJournalCSV_x0020_V1Result", ["SOAP::SOAPBase64", XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxJournalCSV_x0020_V1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxJournalCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxJournalCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxJournalCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxJournalCSVV1Response"),
    :schema_element => [
      ["getACHEFTPaymentBoxJournalCSVV1Result", ["GetACHEFTPaymentBoxJournalCSVV1Response::GetACHEFTPaymentBoxJournalCSVV1Result", XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxJournalCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxJournalCSVV1Response::GetACHEFTPaymentBoxJournalCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxJournalCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxRejectCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxRejectCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxRejectCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxRejectCSVV1Response"),
    :schema_element => [
      ["getACHEFTPaymentBoxRejectCSVV1Result", ["GetACHEFTPaymentBoxRejectCSVV1Response::GetACHEFTPaymentBoxRejectCSVV1Result", XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxRejectCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTPaymentBoxRejectCSVV1Response::GetACHEFTPaymentBoxRejectCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTPaymentBoxRejectCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardBankReconciliationReportCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardBankReconciliationReportCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"],
      ["currency", "SOAP::SOAPString", [0, 1]],
      ["summaryOnly", "SOAP::SOAPBoolean"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardBankReconciliationReportCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardBankReconciliationReportCSVV1Response"),
    :schema_element => [
      ["getCreditCardBankReconciliationReportCSVV1Result", ["GetCreditCardBankReconciliationReportCSVV1Response::GetCreditCardBankReconciliationReportCSVV1Result", XSD::QName.new(NsNetGate, "GetCreditCardBankReconciliationReportCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetCreditCardBankReconciliationReportCSVV1Response::GetCreditCardBankReconciliationReportCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetCreditCardBankReconciliationReportCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTBankReconciliationReportCSVV1,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTBankReconciliationReportCSVV1"),
    :schema_element => [
      ["agentCode", "SOAP::SOAPString", [0, 1]],
      ["password", "SOAP::SOAPString", [0, 1]],
      ["fromDate", "SOAP::SOAPDateTime"],
      ["toDate", "SOAP::SOAPDateTime"],
      ["currency", "SOAP::SOAPString", [0, 1]],
      ["summaryOnly", "SOAP::SOAPBoolean"],
      ["customerIPAddress", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTBankReconciliationReportCSVV1Response,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTBankReconciliationReportCSVV1Response"),
    :schema_element => [
      ["getACHEFTBankReconciliationReportCSVV1Result", ["GetACHEFTBankReconciliationReportCSVV1Response::GetACHEFTBankReconciliationReportCSVV1Result", XSD::QName.new(NsNetGate, "GetACHEFTBankReconciliationReportCSVV1Result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetACHEFTBankReconciliationReportCSVV1Response::GetACHEFTBankReconciliationReportCSVV1Result,
    :schema_name => XSD::QName.new(NsNetGate, "GetACHEFTBankReconciliationReportCSVV1Result"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

# End Report Link
end
