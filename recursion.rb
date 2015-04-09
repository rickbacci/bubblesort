



def down_to_1(number)
  p number -= 1



 if number == 0
   number
 else
   down_to_1(number)
 end
end


down_to_1(100)

