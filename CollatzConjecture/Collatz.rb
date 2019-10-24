#start with an input (n)
# if n is even divide n by 2 ... 
# if n is odd multiply n by 3 and add 1
#repeat
#always boils down to 1


def collatz(n)

  sequence = []
  sequence << n

  while n != 1
    if n % 2 == 0
     n = n / 2
     sequence.push(n)
    else
     n = n * 3 + 1
     sequence.push(n)
    end
  end
  return sequence
end


def find_largest
  input = 1
  longest = []

  while input < 1000000
      current_operation = collatz(input)
    if current_operation.length > longest.length
       longest = current_operation
    end
        input += 1
  end
    puts "The longest sequence length is #{longest.length - 1} at input number #{longest[0]}"
end

starting_time = Time.now
find_largest
ending_time = Time.now
time_elapsed = ending_time - starting_time
puts "Time elapsed is: #{time_elapsed}"

