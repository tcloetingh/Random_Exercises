
  def is_valid?(number)
    
    seperated_digits = []
    seperated_digits << number.split() 
    
    check_sum = seperated_digits.sum

    # if digit is >= 10... subtract 9
    #map this to every digit
    #sum all of those digits
    #if the sum is even return true, false if not

    if check_sum % 10 == 0
      return true
    else 
      return false
    end
  end

is_valid?(4545343455334.to_s)

