require_relative 'default.rb'
require_relative 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

# Begin ProcessLink

class ProcessLinkSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.iatspayments.com/NetGate/ProcessLink.asmx"

  Methods = [
    [ "https://www.iatspayments.com/NetGate/CreateCustomerCodeAndProcessCreditCardV1",
      "createCustomerCodeAndProcessCreditCard",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateCustomerCodeAndProcessCreditCardV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateCustomerCodeAndProcessCreditCardV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessCreditCardWithCustomerCodeV1",
      "processCreditCardWithCustomerCode",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardWithCustomerCodeV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardWithCustomerCodeV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessCreditCardV1",
      "processCreditCard",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/CreateCustomerCodeAndProcessACHEFTV1",
      "createCustomerCodeAndProcessACHEFT",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateCustomerCodeAndProcessACHEFTV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateCustomerCodeAndProcessACHEFTV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessACHEFTWithCustomerCodeV1",
      "processACHEFTWithCustomerCode",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTWithCustomerCodeV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTWithCustomerCodeV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessACHEFTV1",
      "processACHEFT",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessCreditCardRefundWithTransactionIdV1",
      "processCreditCardRefundWithTransactionId",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardRefundWithTransactionIdV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardRefundWithTransactionIdV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessACHEFTRefundWithTransactionIdV1",
      "processACHEFTRefundWithTransactionId",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTRefundWithTransactionIdV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTRefundWithTransactionIdV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessCreditCardBatchV1",
      "processCreditCardBatch",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardBatchV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessCreditCardBatchV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessACHEFTChargeBatchV1",
      "processACHEFTChargeBatch",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTChargeBatchV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTChargeBatchV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/ProcessACHEFTRefundBatchV1",
      "processACHEFTRefundBatch",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTRefundBatchV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "ProcessACHEFTRefundBatchV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetBatchProcessResultFileV1",
      "getBatchProcessResultFile",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetBatchProcessResultFileV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetBatchProcessResultFileV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

# End ProcessLink

# Begin CustomerLink

class CustomerLinkSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.iatspayments.com/NetGate/CustomerLink.asmx"

  Methods = [
    [ "https://www.iatspayments.com/NetGate/CreateCreditCardCustomerCodeV1",
      "createCreditCardCustomerCode",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateCreditCardCustomerCodeV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateCreditCardCustomerCodeV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/CreateACHEFTCustomerCodeV1",
      "createACHEFTCustomerCode",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateACHEFTCustomerCodeV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "CreateACHEFTCustomerCodeV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/UpdateCreditCardCustomerCodeV1",
      "updateCreditCardCustomerCode",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "UpdateCreditCardCustomerCodeV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "UpdateCreditCardCustomerCodeV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/UpdateACHEFTCustomerCodeV1",
      "updateACHEFTCustomerCode",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "UpdateACHEFTCustomerCodeV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "UpdateACHEFTCustomerCodeV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/DeleteCustomerCodeV1",
      "deleteCustomerCode",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "DeleteCustomerCodeV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "DeleteCustomerCodeV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCustomerCodeDetailV1",
      "getCustomerCodeDetail",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCustomerCodeDetailV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCustomerCodeDetailV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

# End CustomerLink

# Begin ReportLink

class ReportLinkSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://www.iatspayments.com/NetGate/ReportLink.asmx"

  Methods = [
    [ "https://www.iatspayments.com/NetGate/GetCCJournalCSV V1",
      "getCCJournalCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCCJournalCSV_x0020_V1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCCJournalCSV_x0020_V1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCreditCardJournalCSVV1",
      "getCreditCardJournalCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardJournalCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardJournalCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCreditCardJournalV1",
      "getCreditCardJournal",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardJournalV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardJournalV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCreditCardRejectCSVV1",
      "getCreditCardRejectCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardRejectCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardRejectCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCreditCardRejectV1",
      "getCreditCardReject",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardRejectV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardRejectV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHJournalCSV V1",
      "getACHJournalCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHJournalCSV_x0020_V1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHJournalCSV_x0020_V1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTJournalCSVV1",
      "getACHEFTJournalCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTJournalCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTJournalCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTJournalV1",
      "getACHEFTJournal",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTJournalV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTJournalV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTRejectCSVV1",
      "getACHEFTRejectCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTRejectCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTRejectCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTRejectV1",
      "getACHEFTReject",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTRejectV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTRejectV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTReturnCSVV1",
      "getACHEFTReturnCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTReturnCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTReturnCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTReturnV1",
      "getACHEFTReturn",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTReturnV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTReturnV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCCPaymentBoxJournalCSV V1",
      "getCCPaymentBoxJournalCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCCPaymentBoxJournalCSV_x0020_V1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCCPaymentBoxJournalCSV_x0020_V1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCreditCardPaymentBoxJournalCSVV1",
      "getCreditCardPaymentBoxJournalCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardPaymentBoxJournalCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardPaymentBoxJournalCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCreditCardPaymentBoxRejectCSVV1",
      "getCreditCardPaymentBoxRejectCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardPaymentBoxRejectCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardPaymentBoxRejectCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTPaymentBoxJournalCSV V1",
      "getACHEFTPaymentBoxJournalCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTPaymentBoxJournalCSV_x0020_V1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTPaymentBoxJournalCSV_x0020_V1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTPaymentBoxJournalCSVV1",
      "getACHEFTPaymentBoxJournalCSV_2",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTPaymentBoxJournalCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTPaymentBoxJournalCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTPaymentBoxRejectCSVV1",
      "getACHEFTPaymentBoxRejectCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTPaymentBoxRejectCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTPaymentBoxRejectCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetCreditCardBankReconciliationReportCSVV1",
      "getCreditCardBankReconciliationReportCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardBankReconciliationReportCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetCreditCardBankReconciliationReportCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "https://www.iatspayments.com/NetGate/GetACHEFTBankReconciliationReportCSVV1",
      "getACHEFTBankReconciliationReportCSV",
      [ [:in, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTBankReconciliationReportCSVV1"]],
        [:out, "parameters", ["::SOAP::SOAPElement", "https://www.iatspayments.com/NetGate/", "GetACHEFTBankReconciliationReportCSVV1Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

# End ReportLink
