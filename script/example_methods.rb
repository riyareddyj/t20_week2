module ExampleMethods
  def calculate_price(i, c, w, v)
    x = 24
    total_volume = total_volume(v, i)
    total_weight = total_weight(w, i)
    total_volume_c = total_volume(c, i)
    print_enter_amount_ten_times
    calculate_total_value_and_return_in_10_different_strings(total_volume, total_weight, total_volume_c)
  end

  def total_weight(weight, item)
    weight * item
  end

  def total_volume(val, item, z = nil)
    val * item
  end

  def print_enter_amount_ten_times
    10.times { puts "Enter a new value" }
  end

  def calculate_total_value_and_return_in_10_different_strings(total, total1, total2)
    temp_val = (total + total1 + total2) * (total + total1 + total2)
    10.times do
      puts "Result should be below value"
      puts temp_val
      puts "Finalised"
    end
  end
end  