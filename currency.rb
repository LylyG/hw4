require 'byebug'
require './currencyexception.rb'

class Currency
  def initialize (symbol, amount)
    @symbol = symbol
    @amount = amount
  end

  def symbol
    @symbol
  end

  def amount
    @amount
  end

  def +(other)
    if @symbol == other.symbol
     @amount = other.amount + @amount
     else raise DifferentCurrencyCodeError
    end
  end

  def *(other)
      if @symbol == other.symbol
       @amount = other.amount * @amount
       else raise DifferentCurrencyCodeError
      end
  end

  def -(other)
      if @symbol == other.symbol
       @amount = @amount - other.amount
      else raise DifferentCurrencyCodeError
      end
  end

  def ==(other)
      @symbol == other.symbol && @amount == other.amount
  end
end

wallet1 = Currency.new("^", 3)
wallet2 = Currency.new("$", 3)

# byebug
# puts wallet1 == wallet2
puts wallet1 * wallet2




# 1 USD "$" => 1 USD
# 1 EUR "€" = 0.89(USD)
# 1 RUB "₽" = 0.013(USD)
# 1 INR "₹" = 0.015(USD)
# 1 CNY "元" = 0.15(USD)
# 1 JPY	"¥" = 0.0086(USD)
# 1 BRL "R$"  = 0.26(USD)
