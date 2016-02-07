# Synopsis
Ruby program that accepts currencies in USD, and converts them to other world currencies using multiple classes.

##Computations
1. Input the currency symbol and retrieve the currency code (i.e., "$" to "USD")
    
    if @symbol ==nil && @amount !=nil
      breaker = amount.split("",2)
      @amount = breaker[1].to_f
      @symbol = code[breaker[0]]
    end

2. Input a quanity in USD and convert to another currency
    
    money = CurrencyConverter.new(20, :USD)
    puts money.convert(20, :BRL)
