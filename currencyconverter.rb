require 'byebug'
require './currency.rb'

class CurrencyConverter
  def initialize (money, desired_rate)
    @money = money
    @desired_rate = desired_rate
    @hash = {USD: 1.0, EUR: 0.89, RUB: 77,
            INR: 68, CNY: 6.58, JPY: 117, BRL: 3.9}
  end

  def desired_rate
    @desired_rate
  end

  def hash
    @hash
  end

  def convert(money, desired_rate)
    new_amount = money.to_f * @hash[desired_rate]
    new_total = Currency.new(new_amount.to_f, desired_rate)
    puts new_total.amount, desired_rate
  end
end
