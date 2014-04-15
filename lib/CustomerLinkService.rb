require_relative 'defaultDriver.rb'
require_relative 'model/IATSResponse.rb'
require 'active_support/core_ext/hash/conversions'

class CustomerLinkService
	
	#Creates instance for the specified endpoint_url. If endpoint_url is nil, Creates the instance for NA region. 
	def initialize(endpoint_url)
		@service = CustomerLinkSoap.new(endpoint_url)
		@service.return_response_as_xml = true	
	end
	
	# @param
	#    {CreateCreditCardCustomerCodeV1} - https://www.iatspayments.com/NetGate/CreateCreditCardCustomerCodeV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for create a customer code for a donor using a credit card.
	def createCreditCardCustomerCode(createCreditCardCustomerCodeV1)
		res = @service.createCreditCardCustomerCode(createCreditCardCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["CreateCreditCardCustomerCodeV1Response"]["CreateCreditCardCustomerCodeV1Result"])
	end
	
	# @param
	#    {CreateACHEFTCustomerCodeV1} - https://www.iatspayments.com/NetGate/CreateACHEFTCustomerCodeV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for create a customer code for a donor using direct debit.
	def createACHEFTCustomerCode(createACHEFTCustomerCodeV1)
		res = @service.createACHEFTCustomerCode(createACHEFTCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["CreateACHEFTCustomerCodeV1Response"]["CreateACHEFTCustomerCodeV1Result"])
	end
	
	# @param
	#    {UpdateCreditCardCustomerCodeV1} - https://www.iatspayments.com/NetGate/UpdateCreditCardCustomerCodeV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for when you want to create a credit card customer code (Recurring is set to false) and to process a cedit card transaction at the same time.
	def updateCreditCardCustomerCode(updateCreditCardCustomerCodeV1)
		res = @service.updateCreditCardCustomerCode(updateCreditCardCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["UpdateCreditCardCustomerCodeV1Response"]["UpdateCreditCardCustomerCodeV1Result"])
	end
	
	# @param
	#    {UpdateACHEFTCustomerCodeV1} - https://www.iatspayments.com/NetGate/UpdateACHEFTCustomerCodeV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for when you want to create a credit card customer code (Recurring is set to false) and to process a cedit card transaction at the same time.
	def updateACHEFTCustomerCode(updateACHEFTCustomerCodeV1)
		res = @service.updateACHEFTCustomerCode(updateACHEFTCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["UpdateACHEFTCustomerCodeV1Response"]["UpdateACHEFTCustomerCodeV1Result"])
	end
	
	# @param
	#    {DeleteCustomerCodeV1} - https://www.iatspayments.com/NetGate/DeleteCustomerCodeV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for delete an existing customer code.
	def deleteCustomerCode(deleteCustomerCodeV1)
		res = @service.deleteCustomerCode(deleteCustomerCodeV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["DeleteCustomerCodeV1Response"]["DeleteCustomerCodeV1Result"])
	end
	
	# @param
	#    {GetCustomerCodeDetailV1} - https://www.iatspayments.com/NetGate/GetCustomerCodeDetailV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for get the details of an existing customer code.
	def getCustomerCodeDetail(getCustomerCodeDetailV1)
		res = @service.getCustomerCodeDetail(getCustomerCodeDetailV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCustomerCodeDetailV1Response"]["GetCustomerCodeDetailV1Result"])
	end
end
