require 'byebug'
require './currencyexception.rb'
require './currencyexception2.rb'

class Currency
  def initialize (amount, symbol=nil)
    @symbol = symbol
    @amount = amount
    code = {"$"=>:USD, "€"=>:EUR, "₽"=>:RUB, "₹"=>:INR, "元"=>:CNY,
      "¥"=>:JPY, "R$"=>:BRL}
    if @symbol ==nil && @amount !=nil
      breaker = amount.split("",2)
      @amount = breaker[1].to_f
      @symbol = code[breaker[0]]
    else
      raise UnknownCurrencyCodeError
    end
  end

  def symbol
    @symbol
  end

  def amount
    @amount.to_f
  end

  def +(other)
    if @symbol == other.symbol
      return Currency.new(@symbol, other.amount + @amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(other)
    if @symbol == other.symbol
      return Currency.new(other.amount * @amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if @symbol == other.symbol
      return Currency.new(@amount - other.amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

   def -(other)
     return Currency.new(@symbol, @amount - other.amount)
   end

  def ==(other)
    return Currency.new(@symbol == other.symbol && @amount == other.amount)
  end

  def to_s
    "#{@symbol}#{@amount}"
  end
end
