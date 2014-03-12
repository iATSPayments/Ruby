require 'date'

class CreditCard
attr_accessor :month
attr_accessor :year
attr_accessor :brand
attr_accessor :number

def initialize(options={})
self.month = options[:month]
self.year = options[:year]
self.brand = options[:brand]
self.number = options[:number]
end

def expired? #:nodoc:
  @month = month.to_i
  @year = year.to_i
  Time.now.utc > expiration
end

def expiration #:nodoc:
  begin
    
    Time.utc(year, month, month_days, 23, 59, 59)
  rescue ArgumentError
    Time.at(0).utc
  end
end

private
def month_days
  mdays = [nil,31,28,31,30,31,30,31,31,30,31,30,31]
  mdays[2] = 29 if Date.leap?(year)
  mdays[month]
end
end

