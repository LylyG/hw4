require 'byebug'
require './currency.rb'

class CurrencyConverter
  def initialize (symbol, amount)
    @symbol = symbol
    @amount = amount
  end

  def get_rate
  end

  def to_s
    puts "You have #{get_rate} dollars in your wallet."
  end
end
