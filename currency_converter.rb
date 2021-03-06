require './error'

class CurrencyConverter

  attr_reader :currency_hash

  def initialize (currency_hash = {})
    @currency_hash = currency_hash
  end

  def convert (currency, currency_code)
    if @currency_hash.has_key?(currency_code)
      currency.amount * (@currency_hash[currency_code]/@currency_hash[currency.currency_code])
    else
      raise UnknownCurrencyCodeError
    end
  end

end
