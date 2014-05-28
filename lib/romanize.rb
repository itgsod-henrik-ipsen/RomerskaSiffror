def romanize(number)
    raise ArgumentError, 'can not encode zero' if number.zero?
    raise ArgumentError, 'can not encode negative number' if number <= 0

    numbers = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}
    output = String.new
    
end