def custom_map(arr,block)
  newarr = []
  arr.each do |ele|
    e = block.call(ele)
    newarr.push(e)
  end
  newarr
end

addition = lambda {|a| a += 1 }
puts custom_map([1,2,3], addition)