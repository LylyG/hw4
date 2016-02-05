require 'byebug'
require './currency.rb'


wallet1 = Currency.new("$", 3)
wallet2 = Currency.new("$", 3)
puts wallet1 + wallet2



current_rates = {:USD=>1.0, :EUR=>0.89, :RUB=>0.013,
  :INR=>0.015, :CNY=>0.15, :JPY=>0.0086, :BRL=>0.25}
