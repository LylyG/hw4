require 'byebug'
require './currencyexception.rb'

class Currency
  def initialize (symbol, amount)
    @symbol = symbol
    @amount = amount
    @code = {"$"=>"USD", "€"=>"EUR", "₽"=>"RUB", "₹"=>"INR", "元"=>"CNY", "¥"=>"JPY", "R$"=>"BRL"}
  end

  def symbol
    @symbol
  end

  def amount
    @amount
  end

  def find_code
    puts @code[@symbol]
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
    "#{@symbol} #{@amount}"
  end
end
