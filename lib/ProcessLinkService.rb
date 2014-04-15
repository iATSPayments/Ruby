require_relative 'defaultDriver.rb'
require_relative 'model/IATSResponse.rb'
require 'active_support/core_ext/hash/conversions'
class ProcessLinkService
	
	#Creates instance for the specified endpoint_url. If endpoint_url is nil, Creates the instance for NA region. 
	def initialize(endpoint_url)
		@service = ProcessLinkSoap.new(endpoint_url)
		@service.return_response_as_xml = true
	end

	# @param
	#    {CreateCustomerCodeAndProcessCreditCardV1} - https://www.iatspayments.com/NetGate/CreateCustomerCodeAndProcessCreditCardV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for when you want to create a credit card customer code (Recurring is set to false) and to process a cedit card transaction at the same time.
	def createCustomerCodeAndProcessCreditCard(createCustomerCodeAndProcessCreditCardV1)
		res = @service.createCustomerCodeAndProcessCreditCard(createCustomerCodeAndProcessCreditCardV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["CreateCustomerCodeAndProcessCreditCardV1Response"]["CreateCustomerCodeAndProcessCreditCardV1Result"])
	end

	# @param
	#    {ProcessCreditCardWithCustomerCodeV1} - https://www.iatspayments.com/NetGate/ProcessCreditCardWithCustomerCodeV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you want to process a single credit card transaction using an existing credit card customer code.
	def processCreditCardWithCustomerCode(processCreditCardWithCustomerCodeV1)
		res = @service.processCreditCardWithCustomerCode(processCreditCardWithCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessCreditCardWithCustomerCodeV1Response"]["ProcessCreditCardWithCustomerCodeV1Result"])
	end

	# @param
	#    {ProcessCreditCardV1} - https://www.iatspayments.com/NetGate/ProcessCreditCardV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This is when you want to do a once-off credit card transaction without needing a customer code (token) to be used or created.
	def processCreditCard(processCreditCardV1)
		res = @service.processCreditCard(processCreditCardV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessCreditCardV1Response"]["ProcessCreditCardV1Result"])
	end

	# @param
	#    {CreateCustomerCodeAndProcessACHEFTV1} - https://www.iatspayments.com/NetGate/CreateCustomerCodeAndProcessACHEFTV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you want to create a direct debit (ACHEFT) customer code (Recurring is set to false) and to processing an ACHEFT transaction at the same time.
	def createCustomerCodeAndProcessACHEFT(createCustomerCodeAndProcessACHEFTV1)
		res = @service.createCustomerCodeAndProcessACHEFT(createCustomerCodeAndProcessACHEFTV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["CreateCustomerCodeAndProcessACHEFTV1Response"]["CreateCustomerCodeAndProcessACHEFTV1Result"])
	end

	# @param
	#    {ProcessACHEFTWithCustomerCodeV1} - https://www.iatspayments.com/NetGate/ProcessACHEFTWithCustomerCodeV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you want to process a single direct debit (ACHEFT) transaction with an existing customer code.
	def processACHEFTWithCustomerCode(processACHEFTWithCustomerCodeV1)
		res = @service.processACHEFTWithCustomerCode(processACHEFTWithCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessACHEFTWithCustomerCodeV1Response"]["ProcessACHEFTWithCustomerCodeV1Result"])
	end
	
	# @param
	#    {ProcessACHEFTV1} - https://www.iatspayments.com/NetGate/ProcessACHEFTV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is used when you want to make a transaction using an existing direct debit account in your system and no customer code is available or required.
	def processACHEFT(processACHEFTV1)
		res = @service.processACHEFT(ProcessACHEFTV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessACHEFTV1Response"]["ProcessACHEFTV1Result"])
	end

	# @param
	#    {ProcessCreditCardRefundWithTransactionIdV1} - https://www.iatspayments.com/NetGate/ProcessCreditCardRefundWithTransactionIdV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you need to refund a specific transaction made on a credit card in your system.
	def processCreditCardRefundWithTransactionId(processCreditCardRefundWithTransactionIdV1)
		res = @service.processCreditCardRefundWithTransactionId(processCreditCardRefundWithTransactionIdV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessCreditCardRefundWithTransactionIdV1Response"]["ProcessCreditCardRefundWithTransactionIdV1Result"])
	end

	# @param
	#    {ProcessACHEFTRefundWithTransactionIdV1} - https://www.iatspayments.com/NetGate/ProcessACHEFTRefundWithTransactionIdV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you need to refund a specific transaction made using ACHEFT.
	def processACHEFTRefundWithTransactionId(processACHEFTRefundWithTransactionIdV1)
		res = @service.processACHEFTRefundWithTransactionId(processACHEFTRefundWithTransactionIdV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessACHEFTRefundWithTransactionIdV1Response"]["ProcessACHEFTRefundWithTransactionIdV1Result"])
	end

	# @param
	#    {ProcessCreditCardBatchV1} - https://www.iatspayments.com/NetGate/ProcessCreditCardBatchV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you wish to process multiple credit card transactions (made on multiple credit cards) in one request.
	def processCreditCardBatch(processCreditCardBatchV1)
		res = @service.processCreditCardBatch(processCreditCardBatchV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessCreditCardBatchV1Response"]["ProcessCreditCardBatchV1Result"])
	end

	# @param
	#    {ProcessACHEFTChargeBatchV1} - https://www.iatspayments.com/NetGate/ProcessACHEFTChargeBatchV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you wish to process ACHEFT transactions from more than one donor in one request.
	def processACHEFTChargeBatch(processACHEFTChargeBatchV1)
		res = @service.processACHEFTChargeBatch(processACHEFTChargeBatchV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessACHEFTChargeBatchV1Response"]["ProcessACHEFTChargeBatchV1Result"])
	end

	# @param
	#    {ProcessACHEFTRefundBatchV1} - https://www.iatspayments.com/NetGate/ProcessACHEFTRefundBatchV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you wish to refund multiple ACHEFT transactions from more than one donor in one request
	def processACHEFTRefundBatch(processACHEFTRefundBatchV1)
		res = @service.processACHEFTRefundBatch(processACHEFTWithCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["ProcessACHEFTRefundBatchV1Response"]["ProcessACHEFTRefundBatchV1Result"])
	end

	# @param
	#    {GetBatchProcessResultFileV1} - https://www.iatspayments.com/NetGate/GetBatchProcessResultFileV1
	#
	# @return {IATSResponse}
	#
	# Description
	#   This service is for when you want to request the results of a previous batch request.
	def getBatchProcessResultFile(getBatchProcessResultFileV1)
		res = @service.getBatchProcessResultFile(getBatchProcessResultFileV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetBatchProcessResultFileV1Response"]["GetBatchProcessResultFileV1Result"])
	end

end
