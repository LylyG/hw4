require 'byebug'

class Currency
  def initialize (symbol, amount)
    @symbol = symbol
    @amount = amount
  end

  def ==(other)
    @symbol
  end

  def symbol
    @symbol
  end

  def amount
    @amount
  end

  def +(other)
    return Currency.new(@symbol, @amount + other.amount)
  end

  def -(other)
    return Currency.new(@symbol, @amount - other.amount)
  end

  def ==(match)
  if @symbol != symbol
  else
  raise "DifferentCurrencyCodeError"
  end
  end
end


wallet1 = Currency.new("$", 3)
wallet2 = Currency.new("$", 2)

# byebug
puts wallet1 == wallet2
# puts "#{wallet3.symbol} #{wallet3.amount}"

# puts wallet1.amount
# puts wallet1.symbol == wallet2.symbol





# 1 USD "$" => 1 USD
# 1 EUR "€" = 0.89(USD)
# 1 RUB "₽" = 0.013(USD)
# 1 INR "₹" = 0.015(USD)
# 1 CNY "元" = 0.15(USD)
# 1 JPY	"¥" = 0.0086(USD)
# 1 BRL "R$"  = 0.26(USD)
