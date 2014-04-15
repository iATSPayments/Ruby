require_relative 'defaultDriver.rb'
require_relative 'model/IATSResponse.rb'
require 'active_support/core_ext/hash/conversions'

class ReportLinkService
	
	#Creates instance for the specified endpoint_url. If endpoint_url is nil, Creates the instance for NA region. 
	def initialize(endpoint_url)
		@service = ReportLinkSoap.new(endpoint_url)
		@service.return_response_as_xml = true	
	end
	
	# @param
	#    {GetCCJournalCSV_x0020_V1} - https://www.iatspayments.com/NetGate/GetCCJournalCSV_x0020_V1
	# 
	#
	# @return {Base64}
	# 
	#
	# Description
	#   This service is for request a report of Credit card transaction.
	def getCCJournalCSV(getCCJournalCSV_x0020_V1)
		res = @service.getCCJournalCSV(getCCJournalCSV_x0020_V1)
		hash = Hash.from_xml(res.to_s)
		hash["Envelope"]["Body"]["GetCCJournalCSV_x0020_V1Response"]["GetCCJournalCSV_x0020_V1Result"]
	end
	
	# @param
	#    {GetCreditCardJournalCSVV1} - https://www.iatspayments.com/NetGate/GetCreditCardJournalCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of approved credit card transactions.
	def getCreditCardJournalCSV(getCreditCardJournalCSVV1)
		res = @service.getCreditCardJournalCSV(getCreditCardJournalCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCreditCardJournalCSVV1Response"]["GetCreditCardJournalCSVV1Result"])
	end
	
	# @param
	#    {GetCreditCardJournalV1} - https://www.iatspayments.com/NetGate/GetCreditCardJournalV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getCreditCardJournal(getCreditCardJournalV1)
		res = @service.getCreditCardJournal(getCreditCardJournalV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCreditCardJournalV1Response"]["GetCreditCardJournalV1Result"])
	end
	
	# @param
	#    {GetCreditCardRejectCSVV1} - https://www.iatspayments.com/NetGate/GetCreditCardRejectCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of rejected credit card transactions.
	def getCreditCardRejectCSV(getCreditCardRejectCSVV1)
		res = @service.getCreditCardRejectCSV(getCreditCardRejectCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCreditCardRejectCSVV1Response"]["GetCreditCardRejectV1Result"])
	end
	
	# @param
	#    {GetCreditCardRejectV1} - https://www.iatspayments.com/NetGate/GetCreditCardRejectV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getCreditCardReject(getCreditCardRejectV1)
		res = @service.getCreditCardReject(getCreditCardRejectV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCreditCardRejectV1Response"]["GetCreditCardRejectV1Result"])
	end
	
	# @param
	#    {getACHJournalCSV_x0020_V1} - https://www.iatspayments.com/NetGate/getACHJournalCSV_x0020_V1
	# 
	#
	# @return {Base64}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getACHJournalCSV(getACHJournalCSV_x0020_V1)
		res = @service.getACHJournalCSV(getACHJournalCSV_x0020_V1)
		hash = Hash.from_xml(res.to_s)
		hash["Envelope"]["Body"]["GetACHJournalCSV_x0020_V1Response"]["GetACHJournalCSV_x0020_V1Result"]
	end
	
	# @param
	#    {GetACHEFTJournalCSVV1} - https://www.iatspayments.com/NetGate/GetACHEFTJournalCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of approved ACHEFT transactions.
	def getACHEFTJournalCSV(getACHEFTJournalCSVV1)
		res = @service.getACHEFTJournalCSV(getACHEFTJournalCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTJournalCSVV1Response"]["GetACHEFTJournalCSVV1Result"])
	end
	
	# @param
	#    {GetACHEFTJournalV1} - https://www.iatspayments.com/NetGate/GetACHEFTJournalV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getACHEFTJournal(getACHEFTJournalV1)
		res = @service.getACHEFTJournal(getACHEFTJournalV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTJournalV1Response"]["GetACHEFTJournalV1Result"])
	end
	
	# @param
	#    {GetACHEFTRejectCSVV1} - https://www.iatspayments.com/NetGate/GetACHEFTRejectCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of rejected ACHEFT transactions.
	def getACHEFTRejectCSV(getACHEFTRejectCSVV1)
		res = @service.getACHEFTRejectCSV(getACHEFTRejectCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTRejectCSVV1Response"]["GetACHEFTRejectCSVV1Result"])
	end
	
	# @param
	#    {GetACHEFTRejectV1} - https://www.iatspayments.com/NetGate/GetACHEFTRejectV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getACHEFTReject(getACHEFTRejectV1)
		res = @service.getACHEFTReject(getACHEFTRejectV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTRejectV1Response"]["GetACHEFTRejectV1Result"])
	end
	
	# @param
	#    {GetACHEFTReturnCSVV1} - https://www.iatspayments.com/NetGate/GetACHEFTReturnCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of ACHEFT transactions that have been returned.
	def getACHEFTReturnCSV(getACHEFTReturnCSVV1)
		res = @service.getACHEFTReturnCSV(getACHEFTReturnCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTReturnCSVV1Response"]["GetACHEFTReturnCSVV1Result"])
	end
	
	# @param
	#    {GetACHEFTReturnV1} - https://www.iatspayments.com/NetGate/GetACHEFTReturnV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getACHEFTReturn(getACHEFTReturnV1)
		res = @service.getACHEFTReturn(getACHEFTReturnV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTReturnV1Response"]["GetACHEFTReturnV1Result"])
	end
	
	# @param
	#    {GetCCPaymentBoxJournalCSV_x0020_V1} - https://www.iatspayments.com/NetGate/GetCCPaymentBoxJournalCSV_x0020_V1
	# 
	#
	# @return {Base64}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getCCPaymentBoxJournalCSV(getCCPaymentBoxJournalCSV_x0020_V1)
		res = @service.getCCPaymentBoxJournalCSV(getCCPaymentBoxJournalCSV_x0020_V1)
		hash = Hash.from_xml(res.to_s)
		hash["Envelope"]["Body"]["GetCCPaymentBoxJournalCSV_x0020_V1Response"]["GetCCPaymentBoxJournalCSV_x0020_V1Result"]
	end

	# @param
	#    {GetCreditCardPaymentBoxJournalCSVV1} - https://www.iatspayments.com/NetGate/GetCreditCardPaymentBoxJournalCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of credit card transactions between two dates.
	def getCreditCardPaymentBoxJournalCSV(getCreditCardPaymentBoxJournalCSVV1)
		res = @service.getCreditCardPaymentBoxJournalCSV(getCreditCardPaymentBoxJournalCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCreditCardPaymentBoxJournalCSVV1Response"]["GetCreditCardPaymentBoxJournalCSVV1Result"])
	end

	# @param
	#    {GetCreditCardPaymentBoxRejectCSVV1} - https://www.iatspayments.com/NetGate/GetCreditCardPaymentBoxRejectCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of rejected credit card transactions between two dates.
	def getCreditCardPaymentBoxRejectCSV(getCreditCardPaymentBoxRejectCSVV1)
		res = @service.getCreditCardPaymentBoxRejectCSV(getCreditCardPaymentBoxRejectCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCreditCardPaymentBoxRejectCSVV1Response"]["GetCreditCardPaymentBoxRejectCSVV1Result"])
	end

	# @param
	#    {GetACHEFTPaymentBoxJournalCSV_x0020_V1} - https://www.iatspayments.com/NetGate/GetACHEFTPaymentBoxJournalCSV_x0020_V1
	# 
	#
	# @return {Base64}
	# 
	#
	# Description
	#   This service will generate an encoded base64binary response.
	def getACHEFTPaymentBoxJournalCSV(getACHEFTPaymentBoxJournalCSV_x0020_V1)
		res = @service.getACHEFTPaymentBoxJournalCSV(getACHEFTPaymentBoxJournalCSV_x0020_V1)
		hash = Hash.from_xml(res.to_s)
		hash["Envelope"]["Body"]["GetACHEFTPaymentBoxJournalCSV_x0020_V1Response"]["GetACHEFTPaymentBoxJournalCSV_x0020_V1Result"]
	end

	# @param
	#    {GetACHEFTPaymentBoxJournalCSVV1} - https://www.iatspayments.com/NetGate/GetACHEFTPaymentBoxJournalCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a detail report of approved ACHEFT transactions between two dates.
	def getACHEFTPaymentBoxJournalCSV_2(getACHEFTPaymentBoxJournalCSVV1)
		res = @service.getACHEFTPaymentBoxJournalCSV_2(getACHEFTPaymentBoxJournalCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTPaymentBoxJournalCSVV1Response"]["GetACHEFTPaymentBoxJournalCSVV1Result"])
	end

	# @param
	#    {GetACHEFTPaymentBoxRejectCSVV1} - https://www.iatspayments.com/NetGate/GetACHEFTPaymentBoxRejectCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a detail report of rejected ACHEFT transactions between two dates.
	def getACHEFTPaymentBoxRejectCSV(getACHEFTPaymentBoxRejectCSVV1)
		res = @service.getACHEFTPaymentBoxRejectCSV(getACHEFTPaymentBoxRejectCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTPaymentBoxRejectCSVV1Response"]["GetACHEFTPaymentBoxRejectCSVV1Result"])
	end

	# @param
	#    {GetCreditCardBankReconciliationReportCSVV1} - https://www.iatspayments.com/NetGate/GetCreditCardBankReconciliationReportCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of the bank balance of credit card transactions.
	def getCreditCardBankReconciliationReportCSV(getCreditCardBankReconciliationReportCSVV1)
		res = @service.getCreditCardBankReconciliationReportCSV(getCreditCardBankReconciliationReportCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetCreditCardBankReconciliationReportCSVV1Response"]["GetCreditCardBankReconciliationReportCSVV1Result"])
	end

	# @param
	#    {GetACHEFTBankReconciliationReportCSVV1} - https://www.iatspayments.com/NetGate/GetACHEFTBankReconciliationReportCSVV1
	# 
	#
	# @return {IATSResponse}
	# 
	#
	# Description
	#   This service is for request a report of the bank balance of ACHEFT transactions.
	def getACHEFTBankReconciliationReportCSV(getACHEFTBankReconciliationReportCSVV1)
		res = @service.getACHEFTBankReconciliationReportCSV(getACHEFTBankReconciliationReportCSVV1)
		hash = Hash.from_xml(res.to_s)
		IATSResponse.new(hash["Envelope"]["Body"]["GetACHEFTBankReconciliationReportCSVV1Response"]["GetACHEFTBankReconciliationReportCSVV1Result"])
	end
	
end
