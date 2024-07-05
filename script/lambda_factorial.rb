fact = lambda do |number|
  factorial = 1
  if (number == 0)
    puts "Error! Could not find the factorial of one"
  else
    counter = 1 
    while(counter <= number)
      factorial = factorial * counter 
      counter += 1
    end
  end
  puts "factorial of #{number} is #{factorial}"
end

puts fact.call(5)