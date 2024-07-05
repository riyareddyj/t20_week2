class max_number
  def max_number(num1, num2, num3, num4)
    max_value = 
      if num1 > num2 
        if num1 > num3
          num1 > num4 ? num1 : num4
        else
          num3 > num4 ? num3 : num4
        end
      else
        if num2 > num3
          num2 > num4 ? num2 : num4
        else
          num3 > num4 ? num3 : num4
        end
      end
  
    result = 'This is the code to find maximum value among four numbers,' \
           'this has to be correct efficiently following all code standards,' \
           'you can rewrite the logic or modify the existing code but do not' \
           'use simplified methods, write raw logic'
  end
end