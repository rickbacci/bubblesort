

@swap = false

@swaps = 0

@iterations = 0

def sort(sequence)

  first_index, second_index, swap = 0, 1, false

  possible_swaps = sequence.length - 1

  possible_swaps.times do #swaps needed for one time thru array

    first_value = sequence[first_index]
    second_value = sequence[second_index]

    if sequence[first_index] > sequence[second_index]# && swap == false

      sequence[first_index] = second_value
      sequence[second_index] = first_value

      @swaps += 1
      @swap = true

      puts "      Swap #{@swaps}  --  #{sequence}"
    end
    @iterations += 1

    first_index += 1
    second_index += 1

  end
  #puts "\nIterations #{@iterations}"
  puts

  #p @iterations

  if @swap
    @swap = false
    puts
    sort(sequence)
  else
    sequence
  end
end

sequence = [4, 3, 5, 0, 1] # 7 swaps
puts "Starting array:   #{sequence}"
puts

# sequence = [5, 4, 3, 2, 1] # 10 swaps

sort(sequence)

puts " Total Swaps  --  #{@swaps}\n\n"
puts "Final result  --  #{sequence}"

