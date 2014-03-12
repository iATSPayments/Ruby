
class Response
   attr_reader :params, :message, :test, :authorization
   def initialize(success, message, params = {}, options = {})
	@success, @message, @params = success, message, params
        @test = options[:test] || false
        @authorization = options[:authorization]
   end

   def success?
     @success
   end

  def test?
    @test
  end

  def fraud_review?
     @fraud_review
  end

end
