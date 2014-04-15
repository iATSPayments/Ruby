require 'xsd/qname'

# Begin ProcessLink

# {https://www.iatspayments.com/NetGate/}CreateCustomerCodeAndProcessCreditCardV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   invoiceNum - SOAP::SOAPString
#   ccNum - SOAP::SOAPString
#   ccExp - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   cvv2 - SOAP::SOAPString
#   total - SOAP::SOAPString
class CreateCustomerCodeAndProcessCreditCardV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :invoiceNum
  attr_accessor :ccNum
  attr_accessor :ccExp
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :cvv2
  attr_accessor :total

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, invoiceNum = nil, ccNum = nil, ccExp = nil, firstName = nil, lastName = nil, address = nil, city = nil, state = nil, zipCode = nil, cvv2 = nil, total = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @invoiceNum = invoiceNum
    @ccNum = ccNum
    @ccExp = ccExp
    @firstName = firstName
    @lastName = lastName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @cvv2 = cvv2
    @total = total
  end
end

# {https://www.iatspayments.com/NetGate/}CreateCustomerCodeAndProcessCreditCardV1Response
#   createCustomerCodeAndProcessCreditCardV1Result - CreateCustomerCodeAndProcessCreditCardV1Response::CreateCustomerCodeAndProcessCreditCardV1Result
class CreateCustomerCodeAndProcessCreditCardV1Response

  # inner class for member: CreateCustomerCodeAndProcessCreditCardV1Result
  # {https://www.iatspayments.com/NetGate/}CreateCustomerCodeAndProcessCreditCardV1Result
  class CreateCustomerCodeAndProcessCreditCardV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :createCustomerCodeAndProcessCreditCardV1Result

  def initialize(createCustomerCodeAndProcessCreditCardV1Result = nil)
    @createCustomerCodeAndProcessCreditCardV1Result = createCustomerCodeAndProcessCreditCardV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardWithCustomerCodeV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
#   invoiceNum - SOAP::SOAPString
#   cvv2 - SOAP::SOAPString
#   total - SOAP::SOAPString
#   comment - SOAP::SOAPString
class ProcessCreditCardWithCustomerCodeV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode
  attr_accessor :invoiceNum
  attr_accessor :cvv2
  attr_accessor :total
  attr_accessor :comment

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil, invoiceNum = nil, cvv2 = nil, total = nil, comment = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
    @invoiceNum = invoiceNum
    @cvv2 = cvv2
    @total = total
    @comment = comment
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardWithCustomerCodeV1Response
#   processCreditCardWithCustomerCodeV1Result - ProcessCreditCardWithCustomerCodeV1Response::ProcessCreditCardWithCustomerCodeV1Result
class ProcessCreditCardWithCustomerCodeV1Response

  # inner class for member: ProcessCreditCardWithCustomerCodeV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessCreditCardWithCustomerCodeV1Result
  class ProcessCreditCardWithCustomerCodeV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processCreditCardWithCustomerCodeV1Result

  def initialize(processCreditCardWithCustomerCodeV1Result = nil)
    @processCreditCardWithCustomerCodeV1Result = processCreditCardWithCustomerCodeV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   invoiceNum - SOAP::SOAPString
#   creditCardNum - SOAP::SOAPString
#   creditCardExpiry - SOAP::SOAPString
#   cvv2 - SOAP::SOAPString
#   mop - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   total - SOAP::SOAPString
#   comment - SOAP::SOAPString
class ProcessCreditCardV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :invoiceNum
  attr_accessor :creditCardNum
  attr_accessor :creditCardExpiry
  attr_accessor :cvv2
  attr_accessor :mop
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :total
  attr_accessor :comment

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, invoiceNum = nil, creditCardNum = nil, creditCardExpiry = nil, cvv2 = nil, mop = nil, firstName = nil, lastName = nil, address = nil, city = nil, state = nil, zipCode = nil, total = nil, comment = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @invoiceNum = invoiceNum
    @creditCardNum = creditCardNum
    @creditCardExpiry = creditCardExpiry
    @cvv2 = cvv2
    @mop = mop
    @firstName = firstName
    @lastName = lastName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @total = total
    @comment = comment
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardV1Response
#   processCreditCardV1Result - ProcessCreditCardV1Response::ProcessCreditCardV1Result
class ProcessCreditCardV1Response

  # inner class for member: ProcessCreditCardV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessCreditCardV1Result
  class ProcessCreditCardV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processCreditCardV1Result

  def initialize(processCreditCardV1Result = nil)
    @processCreditCardV1Result = processCreditCardV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}CreateCustomerCodeAndProcessACHEFTV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   accountNum - SOAP::SOAPString
#   accountType - SOAP::SOAPString
#   invoiceNum - SOAP::SOAPString
#   total - SOAP::SOAPString
#   comment - SOAP::SOAPString
class CreateCustomerCodeAndProcessACHEFTV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :accountNum
  attr_accessor :accountType
  attr_accessor :invoiceNum
  attr_accessor :total
  attr_accessor :comment

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, firstName = nil, lastName = nil, address = nil, city = nil, state = nil, zipCode = nil, accountNum = nil, accountType = nil, invoiceNum = nil, total = nil, comment = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @firstName = firstName
    @lastName = lastName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @accountNum = accountNum
    @accountType = accountType
    @invoiceNum = invoiceNum
    @total = total
    @comment = comment
  end
end

# {https://www.iatspayments.com/NetGate/}CreateCustomerCodeAndProcessACHEFTV1Response
#   createCustomerCodeAndProcessACHEFTV1Result - CreateCustomerCodeAndProcessACHEFTV1Response::CreateCustomerCodeAndProcessACHEFTV1Result
class CreateCustomerCodeAndProcessACHEFTV1Response

  # inner class for member: CreateCustomerCodeAndProcessACHEFTV1Result
  # {https://www.iatspayments.com/NetGate/}CreateCustomerCodeAndProcessACHEFTV1Result
  class CreateCustomerCodeAndProcessACHEFTV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :createCustomerCodeAndProcessACHEFTV1Result

  def initialize(createCustomerCodeAndProcessACHEFTV1Result = nil)
    @createCustomerCodeAndProcessACHEFTV1Result = createCustomerCodeAndProcessACHEFTV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTWithCustomerCodeV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
#   invoiceNum - SOAP::SOAPString
#   total - SOAP::SOAPString
#   comment - SOAP::SOAPString
class ProcessACHEFTWithCustomerCodeV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode
  attr_accessor :invoiceNum
  attr_accessor :total
  attr_accessor :comment

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil, invoiceNum = nil, total = nil, comment = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
    @invoiceNum = invoiceNum
    @total = total
    @comment = comment
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTWithCustomerCodeV1Response
#   processACHEFTWithCustomerCodeV1Result - ProcessACHEFTWithCustomerCodeV1Response::ProcessACHEFTWithCustomerCodeV1Result
class ProcessACHEFTWithCustomerCodeV1Response

  # inner class for member: ProcessACHEFTWithCustomerCodeV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessACHEFTWithCustomerCodeV1Result
  class ProcessACHEFTWithCustomerCodeV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processACHEFTWithCustomerCodeV1Result

  def initialize(processACHEFTWithCustomerCodeV1Result = nil)
    @processACHEFTWithCustomerCodeV1Result = processACHEFTWithCustomerCodeV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   invoiceNum - SOAP::SOAPString
#   accountNum - SOAP::SOAPString
#   accountType - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   total - SOAP::SOAPString
#   comment - SOAP::SOAPString
class ProcessACHEFTV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :invoiceNum
  attr_accessor :accountNum
  attr_accessor :accountType
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :total
  attr_accessor :comment

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, invoiceNum = nil, accountNum = nil, accountType = nil, firstName = nil, lastName = nil, address = nil, city = nil, state = nil, zipCode = nil, total = nil, comment = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @invoiceNum = invoiceNum
    @accountNum = accountNum
    @accountType = accountType
    @firstName = firstName
    @lastName = lastName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @total = total
    @comment = comment
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTV1Response
#   processACHEFTV1Result - ProcessACHEFTV1Response::ProcessACHEFTV1Result
class ProcessACHEFTV1Response

  # inner class for member: ProcessACHEFTV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessACHEFTV1Result
  class ProcessACHEFTV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processACHEFTV1Result

  def initialize(processACHEFTV1Result = nil)
    @processACHEFTV1Result = processACHEFTV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardRefundWithTransactionIdV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   transactionId - SOAP::SOAPString
#   total - SOAP::SOAPString
#   comment - SOAP::SOAPString
class ProcessCreditCardRefundWithTransactionIdV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :transactionId
  attr_accessor :total
  attr_accessor :comment

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, transactionId = nil, total = nil, comment = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @transactionId = transactionId
    @total = total
    @comment = comment
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardRefundWithTransactionIdV1Response
#   processCreditCardRefundWithTransactionIdV1Result - ProcessCreditCardRefundWithTransactionIdV1Response::ProcessCreditCardRefundWithTransactionIdV1Result
class ProcessCreditCardRefundWithTransactionIdV1Response

  # inner class for member: ProcessCreditCardRefundWithTransactionIdV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessCreditCardRefundWithTransactionIdV1Result
  class ProcessCreditCardRefundWithTransactionIdV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processCreditCardRefundWithTransactionIdV1Result

  def initialize(processCreditCardRefundWithTransactionIdV1Result = nil)
    @processCreditCardRefundWithTransactionIdV1Result = processCreditCardRefundWithTransactionIdV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTRefundWithTransactionIdV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   transactionId - SOAP::SOAPString
#   total - SOAP::SOAPString
#   comment - SOAP::SOAPString
class ProcessACHEFTRefundWithTransactionIdV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :transactionId
  attr_accessor :total
  attr_accessor :comment

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, transactionId = nil, total = nil, comment = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @transactionId = transactionId
    @total = total
    @comment = comment
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTRefundWithTransactionIdV1Response
#   processACHEFTRefundWithTransactionIdV1Result - ProcessACHEFTRefundWithTransactionIdV1Response::ProcessACHEFTRefundWithTransactionIdV1Result
class ProcessACHEFTRefundWithTransactionIdV1Response

  # inner class for member: ProcessACHEFTRefundWithTransactionIdV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessACHEFTRefundWithTransactionIdV1Result
  class ProcessACHEFTRefundWithTransactionIdV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processACHEFTRefundWithTransactionIdV1Result

  def initialize(processACHEFTRefundWithTransactionIdV1Result = nil)
    @processACHEFTRefundWithTransactionIdV1Result = processACHEFTRefundWithTransactionIdV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardBatchV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   batchFile - SOAP::SOAPBase64
class ProcessCreditCardBatchV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :batchFile

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, batchFile = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @batchFile = batchFile
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessCreditCardBatchV1Response
#   processCreditCardBatchV1Result - ProcessCreditCardBatchV1Response::ProcessCreditCardBatchV1Result
class ProcessCreditCardBatchV1Response

  # inner class for member: ProcessCreditCardBatchV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessCreditCardBatchV1Result
  class ProcessCreditCardBatchV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processCreditCardBatchV1Result

  def initialize(processCreditCardBatchV1Result = nil)
    @processCreditCardBatchV1Result = processCreditCardBatchV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTChargeBatchV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   batchFile - SOAP::SOAPBase64
class ProcessACHEFTChargeBatchV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :batchFile

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, batchFile = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @batchFile = batchFile
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTChargeBatchV1Response
#   processACHEFTChargeBatchV1Result - ProcessACHEFTChargeBatchV1Response::ProcessACHEFTChargeBatchV1Result
class ProcessACHEFTChargeBatchV1Response

  # inner class for member: ProcessACHEFTChargeBatchV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessACHEFTChargeBatchV1Result
  class ProcessACHEFTChargeBatchV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processACHEFTChargeBatchV1Result

  def initialize(processACHEFTChargeBatchV1Result = nil)
    @processACHEFTChargeBatchV1Result = processACHEFTChargeBatchV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTRefundBatchV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   batchFile - SOAP::SOAPBase64
class ProcessACHEFTRefundBatchV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :batchFile

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, batchFile = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @batchFile = batchFile
  end
end

# {https://www.iatspayments.com/NetGate/}ProcessACHEFTRefundBatchV1Response
#   processACHEFTRefundBatchV1Result - ProcessACHEFTRefundBatchV1Response::ProcessACHEFTRefundBatchV1Result
class ProcessACHEFTRefundBatchV1Response

  # inner class for member: ProcessACHEFTRefundBatchV1Result
  # {https://www.iatspayments.com/NetGate/}ProcessACHEFTRefundBatchV1Result
  class ProcessACHEFTRefundBatchV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :processACHEFTRefundBatchV1Result

  def initialize(processACHEFTRefundBatchV1Result = nil)
    @processACHEFTRefundBatchV1Result = processACHEFTRefundBatchV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetBatchProcessResultFileV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   batchId - SOAP::SOAPString
class GetBatchProcessResultFileV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :batchId

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, batchId = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @batchId = batchId
  end
end

# {https://www.iatspayments.com/NetGate/}GetBatchProcessResultFileV1Response
#   getBatchProcessResultFileV1Result - GetBatchProcessResultFileV1Response::GetBatchProcessResultFileV1Result
class GetBatchProcessResultFileV1Response

  # inner class for member: GetBatchProcessResultFileV1Result
  # {https://www.iatspayments.com/NetGate/}GetBatchProcessResultFileV1Result
  class GetBatchProcessResultFileV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getBatchProcessResultFileV1Result

  def initialize(getBatchProcessResultFileV1Result = nil)
    @getBatchProcessResultFileV1Result = getBatchProcessResultFileV1Result
  end
end

# End ProcessLink

# Begin CustomerLink

# {https://www.iatspayments.com/NetGate/}CreateCreditCardCustomerCodeV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   alternatePhone - SOAP::SOAPString
#   email - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   recurring - SOAP::SOAPBoolean
#   amount - SOAP::SOAPString
#   beginDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   scheduleType - SOAP::SOAPString
#   scheduleDate - SOAP::SOAPString
#   creditCardCustomerName - SOAP::SOAPString
#   creditCardNum - SOAP::SOAPString
#   creditCardExpiry - SOAP::SOAPString
#   mop - SOAP::SOAPString
class CreateCreditCardCustomerCodeV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :companyName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :phone
  attr_accessor :fax
  attr_accessor :alternatePhone
  attr_accessor :email
  attr_accessor :comment
  attr_accessor :recurring
  attr_accessor :amount
  attr_accessor :beginDate
  attr_accessor :endDate
  attr_accessor :scheduleType
  attr_accessor :scheduleDate
  attr_accessor :creditCardCustomerName
  attr_accessor :creditCardNum
  attr_accessor :creditCardExpiry
  attr_accessor :mop

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil, firstName = nil, lastName = nil, companyName = nil, address = nil, city = nil, state = nil, zipCode = nil, phone = nil, fax = nil, alternatePhone = nil, email = nil, comment = nil, recurring = nil, amount = nil, beginDate = nil, endDate = nil, scheduleType = nil, scheduleDate = nil, creditCardCustomerName = nil, creditCardNum = nil, creditCardExpiry = nil, mop = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
    @firstName = firstName
    @lastName = lastName
    @companyName = companyName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @phone = phone
    @fax = fax
    @alternatePhone = alternatePhone
    @email = email
    @comment = comment
    @recurring = recurring
    @amount = amount
    @beginDate = beginDate
    @endDate = endDate
    @scheduleType = scheduleType
    @scheduleDate = scheduleDate
    @creditCardCustomerName = creditCardCustomerName
    @creditCardNum = creditCardNum
    @creditCardExpiry = creditCardExpiry
    @mop = mop
  end
end

# {https://www.iatspayments.com/NetGate/}CreateCreditCardCustomerCodeV1Response
#   createCreditCardCustomerCodeV1Result - CreateCreditCardCustomerCodeV1Response::CreateCreditCardCustomerCodeV1Result
class CreateCreditCardCustomerCodeV1Response

  # inner class for member: CreateCreditCardCustomerCodeV1Result
  # {https://www.iatspayments.com/NetGate/}CreateCreditCardCustomerCodeV1Result
  class CreateCreditCardCustomerCodeV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :createCreditCardCustomerCodeV1Result

  def initialize(createCreditCardCustomerCodeV1Result = nil)
    @createCreditCardCustomerCodeV1Result = createCreditCardCustomerCodeV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}CreateACHEFTCustomerCodeV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   alternatePhone - SOAP::SOAPString
#   email - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   recurring - SOAP::SOAPBoolean
#   amount - SOAP::SOAPString
#   beginDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   scheduleType - SOAP::SOAPString
#   scheduleDate - SOAP::SOAPString
#   accountCustomerName - SOAP::SOAPString
#   accountNum - SOAP::SOAPString
#   accountType - SOAP::SOAPString
class CreateACHEFTCustomerCodeV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :companyName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :phone
  attr_accessor :fax
  attr_accessor :alternatePhone
  attr_accessor :email
  attr_accessor :comment
  attr_accessor :recurring
  attr_accessor :amount
  attr_accessor :beginDate
  attr_accessor :endDate
  attr_accessor :scheduleType
  attr_accessor :scheduleDate
  attr_accessor :accountCustomerName
  attr_accessor :accountNum
  attr_accessor :accountType

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil, firstName = nil, lastName = nil, companyName = nil, address = nil, city = nil, state = nil, zipCode = nil, phone = nil, fax = nil, alternatePhone = nil, email = nil, comment = nil, recurring = nil, amount = nil, beginDate = nil, endDate = nil, scheduleType = nil, scheduleDate = nil, accountCustomerName = nil, accountNum = nil, accountType = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
    @firstName = firstName
    @lastName = lastName
    @companyName = companyName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @phone = phone
    @fax = fax
    @alternatePhone = alternatePhone
    @email = email
    @comment = comment
    @recurring = recurring
    @amount = amount
    @beginDate = beginDate
    @endDate = endDate
    @scheduleType = scheduleType
    @scheduleDate = scheduleDate
    @accountCustomerName = accountCustomerName
    @accountNum = accountNum
    @accountType = accountType
  end
end

# {https://www.iatspayments.com/NetGate/}CreateACHEFTCustomerCodeV1Response
#   createACHEFTCustomerCodeV1Result - CreateACHEFTCustomerCodeV1Response::CreateACHEFTCustomerCodeV1Result
class CreateACHEFTCustomerCodeV1Response

  # inner class for member: CreateACHEFTCustomerCodeV1Result
  # {https://www.iatspayments.com/NetGate/}CreateACHEFTCustomerCodeV1Result
  class CreateACHEFTCustomerCodeV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :createACHEFTCustomerCodeV1Result

  def initialize(createACHEFTCustomerCodeV1Result = nil)
    @createACHEFTCustomerCodeV1Result = createACHEFTCustomerCodeV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}UpdateCreditCardCustomerCodeV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   alternatePhone - SOAP::SOAPString
#   email - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   recurring - SOAP::SOAPBoolean
#   amount - SOAP::SOAPString
#   beginDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   scheduleType - SOAP::SOAPString
#   scheduleDate - SOAP::SOAPString
#   creditCardCustomerName - SOAP::SOAPString
#   creditCardNum - SOAP::SOAPString
#   creditCardExpiry - SOAP::SOAPString
#   mop - SOAP::SOAPString
#   updateCreditCardNum - SOAP::SOAPBoolean
class UpdateCreditCardCustomerCodeV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :companyName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :phone
  attr_accessor :fax
  attr_accessor :alternatePhone
  attr_accessor :email
  attr_accessor :comment
  attr_accessor :recurring
  attr_accessor :amount
  attr_accessor :beginDate
  attr_accessor :endDate
  attr_accessor :scheduleType
  attr_accessor :scheduleDate
  attr_accessor :creditCardCustomerName
  attr_accessor :creditCardNum
  attr_accessor :creditCardExpiry
  attr_accessor :mop
  attr_accessor :updateCreditCardNum

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil, firstName = nil, lastName = nil, companyName = nil, address = nil, city = nil, state = nil, zipCode = nil, phone = nil, fax = nil, alternatePhone = nil, email = nil, comment = nil, recurring = nil, amount = nil, beginDate = nil, endDate = nil, scheduleType = nil, scheduleDate = nil, creditCardCustomerName = nil, creditCardNum = nil, creditCardExpiry = nil, mop = nil, updateCreditCardNum = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
    @firstName = firstName
    @lastName = lastName
    @companyName = companyName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @phone = phone
    @fax = fax
    @alternatePhone = alternatePhone
    @email = email
    @comment = comment
    @recurring = recurring
    @amount = amount
    @beginDate = beginDate
    @endDate = endDate
    @scheduleType = scheduleType
    @scheduleDate = scheduleDate
    @creditCardCustomerName = creditCardCustomerName
    @creditCardNum = creditCardNum
    @creditCardExpiry = creditCardExpiry
    @mop = mop
    @updateCreditCardNum = updateCreditCardNum
  end
end

# {https://www.iatspayments.com/NetGate/}UpdateCreditCardCustomerCodeV1Response
#   updateCreditCardCustomerCodeV1Result - UpdateCreditCardCustomerCodeV1Response::UpdateCreditCardCustomerCodeV1Result
class UpdateCreditCardCustomerCodeV1Response

  # inner class for member: UpdateCreditCardCustomerCodeV1Result
  # {https://www.iatspayments.com/NetGate/}UpdateCreditCardCustomerCodeV1Result
  class UpdateCreditCardCustomerCodeV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :updateCreditCardCustomerCodeV1Result

  def initialize(updateCreditCardCustomerCodeV1Result = nil)
    @updateCreditCardCustomerCodeV1Result = updateCreditCardCustomerCodeV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}UpdateACHEFTCustomerCodeV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
#   firstName - SOAP::SOAPString
#   lastName - SOAP::SOAPString
#   companyName - SOAP::SOAPString
#   address - SOAP::SOAPString
#   city - SOAP::SOAPString
#   state - SOAP::SOAPString
#   zipCode - SOAP::SOAPString
#   phone - SOAP::SOAPString
#   fax - SOAP::SOAPString
#   alternatePhone - SOAP::SOAPString
#   email - SOAP::SOAPString
#   comment - SOAP::SOAPString
#   recurring - SOAP::SOAPBoolean
#   amount - SOAP::SOAPString
#   beginDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   scheduleType - SOAP::SOAPString
#   scheduleDate - SOAP::SOAPString
#   accountCustomerName - SOAP::SOAPString
#   accountNum - SOAP::SOAPString
#   accountType - SOAP::SOAPString
#   updateAccountNum - SOAP::SOAPBoolean
class UpdateACHEFTCustomerCodeV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode
  attr_accessor :firstName
  attr_accessor :lastName
  attr_accessor :companyName
  attr_accessor :address
  attr_accessor :city
  attr_accessor :state
  attr_accessor :zipCode
  attr_accessor :phone
  attr_accessor :fax
  attr_accessor :alternatePhone
  attr_accessor :email
  attr_accessor :comment
  attr_accessor :recurring
  attr_accessor :amount
  attr_accessor :beginDate
  attr_accessor :endDate
  attr_accessor :scheduleType
  attr_accessor :scheduleDate
  attr_accessor :accountCustomerName
  attr_accessor :accountNum
  attr_accessor :accountType
  attr_accessor :updateAccountNum

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil, firstName = nil, lastName = nil, companyName = nil, address = nil, city = nil, state = nil, zipCode = nil, phone = nil, fax = nil, alternatePhone = nil, email = nil, comment = nil, recurring = nil, amount = nil, beginDate = nil, endDate = nil, scheduleType = nil, scheduleDate = nil, accountCustomerName = nil, accountNum = nil, accountType = nil, updateAccountNum = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
    @firstName = firstName
    @lastName = lastName
    @companyName = companyName
    @address = address
    @city = city
    @state = state
    @zipCode = zipCode
    @phone = phone
    @fax = fax
    @alternatePhone = alternatePhone
    @email = email
    @comment = comment
    @recurring = recurring
    @amount = amount
    @beginDate = beginDate
    @endDate = endDate
    @scheduleType = scheduleType
    @scheduleDate = scheduleDate
    @accountCustomerName = accountCustomerName
    @accountNum = accountNum
    @accountType = accountType
    @updateAccountNum = updateAccountNum
  end
end

# {https://www.iatspayments.com/NetGate/}UpdateACHEFTCustomerCodeV1Response
#   updateACHEFTCustomerCodeV1Result - UpdateACHEFTCustomerCodeV1Response::UpdateACHEFTCustomerCodeV1Result
class UpdateACHEFTCustomerCodeV1Response

  # inner class for member: UpdateACHEFTCustomerCodeV1Result
  # {https://www.iatspayments.com/NetGate/}UpdateACHEFTCustomerCodeV1Result
  class UpdateACHEFTCustomerCodeV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :updateACHEFTCustomerCodeV1Result

  def initialize(updateACHEFTCustomerCodeV1Result = nil)
    @updateACHEFTCustomerCodeV1Result = updateACHEFTCustomerCodeV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}DeleteCustomerCodeV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
class DeleteCustomerCodeV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
  end
end

# {https://www.iatspayments.com/NetGate/}DeleteCustomerCodeV1Response
#   deleteCustomerCodeV1Result - DeleteCustomerCodeV1Response::DeleteCustomerCodeV1Result
class DeleteCustomerCodeV1Response

  # inner class for member: DeleteCustomerCodeV1Result
  # {https://www.iatspayments.com/NetGate/}DeleteCustomerCodeV1Result
  class DeleteCustomerCodeV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :deleteCustomerCodeV1Result

  def initialize(deleteCustomerCodeV1Result = nil)
    @deleteCustomerCodeV1Result = deleteCustomerCodeV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCustomerCodeDetailV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   customerIPAddress - SOAP::SOAPString
#   customerCode - SOAP::SOAPString
class GetCustomerCodeDetailV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :customerIPAddress
  attr_accessor :customerCode

  def initialize(agentCode = nil, password = nil, customerIPAddress = nil, customerCode = nil)
    @agentCode = agentCode
    @password = password
    @customerIPAddress = customerIPAddress
    @customerCode = customerCode
  end
end

# {https://www.iatspayments.com/NetGate/}GetCustomerCodeDetailV1Response
#   getCustomerCodeDetailV1Result - GetCustomerCodeDetailV1Response::GetCustomerCodeDetailV1Result
class GetCustomerCodeDetailV1Response

  # inner class for member: GetCustomerCodeDetailV1Result
  # {https://www.iatspayments.com/NetGate/}GetCustomerCodeDetailV1Result
  class GetCustomerCodeDetailV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCustomerCodeDetailV1Result

  def initialize(getCustomerCodeDetailV1Result = nil)
    @getCustomerCodeDetailV1Result = getCustomerCodeDetailV1Result
  end
end

# End CustomerLink

# Begin ReportLink

# {https://www.iatspayments.com/NetGate/}GetCCJournalCSV_x0020_V1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
class GetCCJournalCSV_x0020_V1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date

  def initialize(agentCode = nil, password = nil, date = nil)
    @agentCode = agentCode
    @password = password
    @date = date
  end
end

# {https://www.iatspayments.com/NetGate/}GetCCJournalCSV_x0020_V1Response
#   getCCJournalCSV_x0020_V1Result - SOAP::SOAPBase64
class GetCCJournalCSV_x0020_V1Response
  attr_accessor :getCCJournalCSV_x0020_V1Result

  def initialize(getCCJournalCSV_x0020_V1Result = nil)
    @getCCJournalCSV_x0020_V1Result = getCCJournalCSV_x0020_V1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardJournalCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetCreditCardJournalCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardJournalCSVV1Response
#   getCreditCardJournalCSVV1Result - GetCreditCardJournalCSVV1Response::GetCreditCardJournalCSVV1Result
class GetCreditCardJournalCSVV1Response

  # inner class for member: GetCreditCardJournalCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetCreditCardJournalCSVV1Result
  class GetCreditCardJournalCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCreditCardJournalCSVV1Result

  def initialize(getCreditCardJournalCSVV1Result = nil)
    @getCreditCardJournalCSVV1Result = getCreditCardJournalCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardJournalV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetCreditCardJournalV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardJournalV1Response
#   getCreditCardJournalV1Result - GetCreditCardJournalV1Response::GetCreditCardJournalV1Result
class GetCreditCardJournalV1Response

  # inner class for member: GetCreditCardJournalV1Result
  # {https://www.iatspayments.com/NetGate/}GetCreditCardJournalV1Result
  class GetCreditCardJournalV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCreditCardJournalV1Result

  def initialize(getCreditCardJournalV1Result = nil)
    @getCreditCardJournalV1Result = getCreditCardJournalV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardRejectCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetCreditCardRejectCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardRejectCSVV1Response
#   getCreditCardRejectCSVV1Result - GetCreditCardRejectCSVV1Response::GetCreditCardRejectCSVV1Result
class GetCreditCardRejectCSVV1Response

  # inner class for member: GetCreditCardRejectCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetCreditCardRejectCSVV1Result
  class GetCreditCardRejectCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCreditCardRejectCSVV1Result

  def initialize(getCreditCardRejectCSVV1Result = nil)
    @getCreditCardRejectCSVV1Result = getCreditCardRejectCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardRejectV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetCreditCardRejectV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardRejectV1Response
#   getCreditCardRejectV1Result - GetCreditCardRejectV1Response::GetCreditCardRejectV1Result
class GetCreditCardRejectV1Response

  # inner class for member: GetCreditCardRejectV1Result
  # {https://www.iatspayments.com/NetGate/}GetCreditCardRejectV1Result
  class GetCreditCardRejectV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCreditCardRejectV1Result

  def initialize(getCreditCardRejectV1Result = nil)
    @getCreditCardRejectV1Result = getCreditCardRejectV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHJournalCSV_x0020_V1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
class GetACHJournalCSV_x0020_V1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date

  def initialize(agentCode = nil, password = nil, date = nil)
    @agentCode = agentCode
    @password = password
    @date = date
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHJournalCSV_x0020_V1Response
#   getACHJournalCSV_x0020_V1Result - SOAP::SOAPBase64
class GetACHJournalCSV_x0020_V1Response
  attr_accessor :getACHJournalCSV_x0020_V1Result

  def initialize(getACHJournalCSV_x0020_V1Result = nil)
    @getACHJournalCSV_x0020_V1Result = getACHJournalCSV_x0020_V1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTJournalCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTJournalCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTJournalCSVV1Response
#   getACHEFTJournalCSVV1Result - GetACHEFTJournalCSVV1Response::GetACHEFTJournalCSVV1Result
class GetACHEFTJournalCSVV1Response

  # inner class for member: GetACHEFTJournalCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTJournalCSVV1Result
  class GetACHEFTJournalCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTJournalCSVV1Result

  def initialize(getACHEFTJournalCSVV1Result = nil)
    @getACHEFTJournalCSVV1Result = getACHEFTJournalCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTJournalV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTJournalV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTJournalV1Response
#   getACHEFTJournalV1Result - GetACHEFTJournalV1Response::GetACHEFTJournalV1Result
class GetACHEFTJournalV1Response

  # inner class for member: GetACHEFTJournalV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTJournalV1Result
  class GetACHEFTJournalV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTJournalV1Result

  def initialize(getACHEFTJournalV1Result = nil)
    @getACHEFTJournalV1Result = getACHEFTJournalV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTRejectCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTRejectCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTRejectCSVV1Response
#   getACHEFTRejectCSVV1Result - GetACHEFTRejectCSVV1Response::GetACHEFTRejectCSVV1Result
class GetACHEFTRejectCSVV1Response

  # inner class for member: GetACHEFTRejectCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTRejectCSVV1Result
  class GetACHEFTRejectCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTRejectCSVV1Result

  def initialize(getACHEFTRejectCSVV1Result = nil)
    @getACHEFTRejectCSVV1Result = getACHEFTRejectCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTRejectV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTRejectV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTRejectV1Response
#   getACHEFTRejectV1Result - GetACHEFTRejectV1Response::GetACHEFTRejectV1Result
class GetACHEFTRejectV1Response

  # inner class for member: GetACHEFTRejectV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTRejectV1Result
  class GetACHEFTRejectV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTRejectV1Result

  def initialize(getACHEFTRejectV1Result = nil)
    @getACHEFTRejectV1Result = getACHEFTRejectV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTReturnCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTReturnCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTReturnCSVV1Response
#   getACHEFTReturnCSVV1Result - GetACHEFTReturnCSVV1Response::GetACHEFTReturnCSVV1Result
class GetACHEFTReturnCSVV1Response

  # inner class for member: GetACHEFTReturnCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTReturnCSVV1Result
  class GetACHEFTReturnCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTReturnCSVV1Result

  def initialize(getACHEFTReturnCSVV1Result = nil)
    @getACHEFTReturnCSVV1Result = getACHEFTReturnCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTReturnV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   date - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTReturnV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :date
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, date = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @date = date
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTReturnV1Response
#   getACHEFTReturnV1Result - GetACHEFTReturnV1Response::GetACHEFTReturnV1Result
class GetACHEFTReturnV1Response

  # inner class for member: GetACHEFTReturnV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTReturnV1Result
  class GetACHEFTReturnV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTReturnV1Result

  def initialize(getACHEFTReturnV1Result = nil)
    @getACHEFTReturnV1Result = getACHEFTReturnV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCCPaymentBoxJournalCSV_x0020_V1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   from - SOAP::SOAPDateTime
#   to - SOAP::SOAPDateTime
class GetCCPaymentBoxJournalCSV_x0020_V1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :from
  attr_accessor :to

  def initialize(agentCode = nil, password = nil, from = nil, to = nil)
    @agentCode = agentCode
    @password = password
    @from = from
    @to = to
  end
end

# {https://www.iatspayments.com/NetGate/}GetCCPaymentBoxJournalCSV_x0020_V1Response
#   getCCPaymentBoxJournalCSV_x0020_V1Result - SOAP::SOAPBase64
class GetCCPaymentBoxJournalCSV_x0020_V1Response
  attr_accessor :getCCPaymentBoxJournalCSV_x0020_V1Result

  def initialize(getCCPaymentBoxJournalCSV_x0020_V1Result = nil)
    @getCCPaymentBoxJournalCSV_x0020_V1Result = getCCPaymentBoxJournalCSV_x0020_V1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardPaymentBoxJournalCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   fromDate - SOAP::SOAPDateTime
#   toDate - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetCreditCardPaymentBoxJournalCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, fromDate = nil, toDate = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @fromDate = fromDate
    @toDate = toDate
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardPaymentBoxJournalCSVV1Response
#   getCreditCardPaymentBoxJournalCSVV1Result - GetCreditCardPaymentBoxJournalCSVV1Response::GetCreditCardPaymentBoxJournalCSVV1Result
class GetCreditCardPaymentBoxJournalCSVV1Response

  # inner class for member: GetCreditCardPaymentBoxJournalCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetCreditCardPaymentBoxJournalCSVV1Result
  class GetCreditCardPaymentBoxJournalCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCreditCardPaymentBoxJournalCSVV1Result

  def initialize(getCreditCardPaymentBoxJournalCSVV1Result = nil)
    @getCreditCardPaymentBoxJournalCSVV1Result = getCreditCardPaymentBoxJournalCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardPaymentBoxRejectCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   fromDate - SOAP::SOAPDateTime
#   toDate - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetCreditCardPaymentBoxRejectCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, fromDate = nil, toDate = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @fromDate = fromDate
    @toDate = toDate
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardPaymentBoxRejectCSVV1Response
#   getCreditCardPaymentBoxRejectCSVV1Result - GetCreditCardPaymentBoxRejectCSVV1Response::GetCreditCardPaymentBoxRejectCSVV1Result
class GetCreditCardPaymentBoxRejectCSVV1Response

  # inner class for member: GetCreditCardPaymentBoxRejectCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetCreditCardPaymentBoxRejectCSVV1Result
  class GetCreditCardPaymentBoxRejectCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCreditCardPaymentBoxRejectCSVV1Result

  def initialize(getCreditCardPaymentBoxRejectCSVV1Result = nil)
    @getCreditCardPaymentBoxRejectCSVV1Result = getCreditCardPaymentBoxRejectCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxJournalCSV_x0020_V1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   from - SOAP::SOAPDateTime
#   to - SOAP::SOAPDateTime
class GetACHEFTPaymentBoxJournalCSV_x0020_V1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :from
  attr_accessor :to

  def initialize(agentCode = nil, password = nil, from = nil, to = nil)
    @agentCode = agentCode
    @password = password
    @from = from
    @to = to
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxJournalCSV_x0020_V1Response
#   getACHEFTPaymentBoxJournalCSV_x0020_V1Result - SOAP::SOAPBase64
class GetACHEFTPaymentBoxJournalCSV_x0020_V1Response
  attr_accessor :getACHEFTPaymentBoxJournalCSV_x0020_V1Result

  def initialize(getACHEFTPaymentBoxJournalCSV_x0020_V1Result = nil)
    @getACHEFTPaymentBoxJournalCSV_x0020_V1Result = getACHEFTPaymentBoxJournalCSV_x0020_V1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxJournalCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   fromDate - SOAP::SOAPDateTime
#   toDate - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTPaymentBoxJournalCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, fromDate = nil, toDate = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @fromDate = fromDate
    @toDate = toDate
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxJournalCSVV1Response
#   getACHEFTPaymentBoxJournalCSVV1Result - GetACHEFTPaymentBoxJournalCSVV1Response::GetACHEFTPaymentBoxJournalCSVV1Result
class GetACHEFTPaymentBoxJournalCSVV1Response

  # inner class for member: GetACHEFTPaymentBoxJournalCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxJournalCSVV1Result
  class GetACHEFTPaymentBoxJournalCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTPaymentBoxJournalCSVV1Result

  def initialize(getACHEFTPaymentBoxJournalCSVV1Result = nil)
    @getACHEFTPaymentBoxJournalCSVV1Result = getACHEFTPaymentBoxJournalCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxRejectCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   fromDate - SOAP::SOAPDateTime
#   toDate - SOAP::SOAPDateTime
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTPaymentBoxRejectCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, fromDate = nil, toDate = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @fromDate = fromDate
    @toDate = toDate
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxRejectCSVV1Response
#   getACHEFTPaymentBoxRejectCSVV1Result - GetACHEFTPaymentBoxRejectCSVV1Response::GetACHEFTPaymentBoxRejectCSVV1Result
class GetACHEFTPaymentBoxRejectCSVV1Response

  # inner class for member: GetACHEFTPaymentBoxRejectCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTPaymentBoxRejectCSVV1Result
  class GetACHEFTPaymentBoxRejectCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTPaymentBoxRejectCSVV1Result

  def initialize(getACHEFTPaymentBoxRejectCSVV1Result = nil)
    @getACHEFTPaymentBoxRejectCSVV1Result = getACHEFTPaymentBoxRejectCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardBankReconciliationReportCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   fromDate - SOAP::SOAPDateTime
#   toDate - SOAP::SOAPDateTime
#   currency - SOAP::SOAPString
#   summaryOnly - SOAP::SOAPBoolean
#   customerIPAddress - SOAP::SOAPString
class GetCreditCardBankReconciliationReportCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :currency
  attr_accessor :summaryOnly
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, fromDate = nil, toDate = nil, currency = nil, summaryOnly = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @fromDate = fromDate
    @toDate = toDate
    @currency = currency
    @summaryOnly = summaryOnly
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetCreditCardBankReconciliationReportCSVV1Response
#   getCreditCardBankReconciliationReportCSVV1Result - GetCreditCardBankReconciliationReportCSVV1Response::GetCreditCardBankReconciliationReportCSVV1Result
class GetCreditCardBankReconciliationReportCSVV1Response

  # inner class for member: GetCreditCardBankReconciliationReportCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetCreditCardBankReconciliationReportCSVV1Result
  class GetCreditCardBankReconciliationReportCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getCreditCardBankReconciliationReportCSVV1Result

  def initialize(getCreditCardBankReconciliationReportCSVV1Result = nil)
    @getCreditCardBankReconciliationReportCSVV1Result = getCreditCardBankReconciliationReportCSVV1Result
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTBankReconciliationReportCSVV1
#   agentCode - SOAP::SOAPString
#   password - SOAP::SOAPString
#   fromDate - SOAP::SOAPDateTime
#   toDate - SOAP::SOAPDateTime
#   currency - SOAP::SOAPString
#   summaryOnly - SOAP::SOAPBoolean
#   customerIPAddress - SOAP::SOAPString
class GetACHEFTBankReconciliationReportCSVV1
  attr_accessor :agentCode
  attr_accessor :password
  attr_accessor :fromDate
  attr_accessor :toDate
  attr_accessor :currency
  attr_accessor :summaryOnly
  attr_accessor :customerIPAddress

  def initialize(agentCode = nil, password = nil, fromDate = nil, toDate = nil, currency = nil, summaryOnly = nil, customerIPAddress = nil)
    @agentCode = agentCode
    @password = password
    @fromDate = fromDate
    @toDate = toDate
    @currency = currency
    @summaryOnly = summaryOnly
    @customerIPAddress = customerIPAddress
  end
end

# {https://www.iatspayments.com/NetGate/}GetACHEFTBankReconciliationReportCSVV1Response
#   getACHEFTBankReconciliationReportCSVV1Result - GetACHEFTBankReconciliationReportCSVV1Response::GetACHEFTBankReconciliationReportCSVV1Result
class GetACHEFTBankReconciliationReportCSVV1Response

  # inner class for member: GetACHEFTBankReconciliationReportCSVV1Result
  # {https://www.iatspayments.com/NetGate/}GetACHEFTBankReconciliationReportCSVV1Result
  class GetACHEFTBankReconciliationReportCSVV1Result
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :getACHEFTBankReconciliationReportCSVV1Result

  def initialize(getACHEFTBankReconciliationReportCSVV1Result = nil)
    @getACHEFTBankReconciliationReportCSVV1Result = getACHEFTBankReconciliationReportCSVV1Result
  end
end

# End ReportLink
