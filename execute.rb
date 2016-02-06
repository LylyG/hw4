require 'byebug'
require './currency.rb'
require './currencyconverter.rb'

# puts wallet.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)

hash = {USD: 1.0, EUR: 0.89, RUB: 0.013,
   INR: 0.015, CNY: 0.15, JPY: 0.0086, BRL: 0.25}

desired_rate = :BRL

wallet1 = Currency.new("$20")
new_total = wallet1.amount * hash[desired_rate]
#
puts new_total, desired_rate.to_s
# #
# #  def to_s
# #     new_total
# #  end
# #
  # puts wallet1.convert
