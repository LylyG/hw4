require 'byebug'
require './currency.rb'

class CurrencyConverter
  def initialize (symbol)
    @symbol = symbol
    @amount = amount
    @new_total = new_total
    @desired_rate = desired_rate
    hash = {USD: 1.0, EUR: 0.89, RUB: 0.013,
     INR: 0.015, CNY: 0.15, JPY: 0.0086, BRL: 0.25}
  end

  def symbol
    @symbol
  end

  def amount
    @amount.to_f
  end

  def new_total
    @new_total
  end

  def desired_rate
    @desired_rate
  end

  def +(desired_rate)
    @new_total + desired_rate
  end

  def to_s
     @new_total
  end

  def convert(amount)
    # new_total = Currency.new(wallet1.amount * hash[desired_rate])
    new_total = Currency.new((wallet1.amount * hash[desired_rate]).to_s)
    puts "#{new_total}" , "#{desired_rate}"
  end
end
