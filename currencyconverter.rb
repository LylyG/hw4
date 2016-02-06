require 'byebug'
require './currency.rb'

class CurrencyConverter
  def initialize (money, desired_rate)
    @money = money
    @desired_rate = desired_rate
    @hash = {USD: 1.0, EUR: 0.89, RUB: 0.013,
            INR: 0.015, CNY: 0.15, JPY: 0.0086, BRL: 0.25}
  end

  def desired_rate
    @desired_rate
  end

  # def money
  #   @money
  # end

  def hash
    @hash
  end

  # def amount
  #   @amount
  # end

  def convert(money, desired_rate)
    new_amount = money.to_f * @hash[desired_rate]
    new_total = Currency.new(new_amount.to_f, desired_rate)
    puts new_total.amount, desired_rate
  end
end
