require 'byebug'
require './currency.rb'
require './currencyconverter.rb'


money = CurrencyConverter.new(20, :USD)
puts money.convert(20, :BRL)
