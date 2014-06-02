def romanize(number)
    raise ArgumentError, 'can not encode zero' if number.zero?  #If inpunt = 0 the user gets an error
    raise ArgumentError, 'can not encode negative number' if number <= 0 #If input is < 0 the user gets an error

    #Creates a hash with different numbers pointing at different values, example if input is 1000 you get M back.
    numbers = {1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C', 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V', 4 => 'IV', 1 => 'I'}
    output = String.new #Creates a new variable he will return a string to the user


    while number != 0
        numbers.each do |key, value|
            if number >= key
                output += value #if the number was 500 the returned value would be D, output variable saves that and now contains an D
                number -= key #Make sure the function don't continue forever
                break
            end
        end
    end

    output #return the string with all the different values added up. 
end


