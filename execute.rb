require 'byebug'
require './currency.rb'
require './CurrencyConverter.rb'

# wallet1 = Currency.new("€", 3)
# wallet2 = Currency.new("$", 3)
#
# wallet1.get_rate


# currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD)

hash = {USD: 1.0, EUR: 0.89, RUB: 0.013,
  INR: 0.015, CNY: 0.15, JPY: 0.0086, BRL: 0.25}
wallet = Currency.new("$2500")
desired = :EUR

def convert (wallet, desired)
  puts new_total = Currency.new(wallet.amount * hash[desired])
end
