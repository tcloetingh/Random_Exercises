def collatz(n, previous_lengths_map)
  orig_n = n
  sequence = []
  while n != 1
    if previous_lengths_map[n] > 0
      final_length = sequence.length + previous_lengths_map[n]
      previous_lengths_map[orig_n] = final_length
      return final_length
    end
      if n % 2 == 0
        n = n / 2
        sequence.push(n)
      else n % 2 != 0
        n = n * 3 + 1
        sequence.push(n)
      end
  end

  previous_lengths_map[orig_n] = sequence.length
  return sequence.length
end

  def find_largest
    previous_lengths_map = Hash.new(0)
    input = 1
    longest_length = 0
    longest_input = 0
    while input < 500000
      current_operation_length = collatz(input, previous_lengths_map)
        if current_operation_length > longest_length
           longest_length = current_operation_length
            longest_input = input
            input += 1
          else
            input += 1
          end
        end
          puts "The longest sequence length is #{longest_length} at input number #{longest_input}"
          #puts previous_lengths_map.inspect
  end

    starting = Time.now
    find_largest
    ending = Time.now
    elapsed = ending - starting
    puts "Time elapsed: #{elapsed}"



