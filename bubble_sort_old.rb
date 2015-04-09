# find the first two values in the array that needs to be sorted and
# compare them. If the first is greater than the 2nd then swap them.
# Then return to the beginning and start again. Continue until a pass thru
# doesn't do a swap

# [0, 1, 3, 4, 5]

p sequence = [4, 3, 5, 0, 1]
# sequence = [3,4,5,0,1]
puts
swaps = 0

next_index = 0



@sorted = []
def bubble_sort(sequence)
  @it ||= 0
  swaps_needed = sequence.length
  @first_value = 0
  @second_value = 1

  @change_made = false

  swaps_needed.times do #swaps needed for one time thru array
    #next if @change_made

    p @first_value
    p @second_value
    p @sorted

    if sequence[@first_value] > sequence[@second_value] && @change_made
      p 'need to swap'
       @sorted << sequence[@second_value]
       p @sorted
       #@sorted.flatten!
       @change_made = true
      p 'done!!!!!!!!!!!!!' if @sorted == [0, 1, 3, 4, 5]
      @sorted
    else
      p 'in else'
      @sorted << sequence[@first_value]
      #p 'done!!!!!!!!!!!!!' if @sorted == [0, 1, 3, 4, 5]
    end

    #@sorted << [sequence[@first_value]]
    @first_value += 1
    @second_value += 1
  end


  @it += 1
  if @it == 5
    return @sorted
  else
    bubble_sort(@sorted)
  end
  #@sorted == [0, 1, 3, 4, 5]
  @sorted
end

def swap

end

#puts "Final result: #{result}"
#puts "Swaps: #{swaps}"



p bubble_sort(sequence)



# sequence.map.with_index do |value, index|
#   next_index = 0
#
#   if index == sequence.length - 1
#     next_index = index
#   else
#     next_index += 1
#   end
#   next_value = sequence[next_index]
#   if value > sequence[index + 1]
#     sequence[index + 1] = value
#     sequence[index] = next_value
#   end
# end
