def fibonacci_digit_counter
  num1, num2, i = -1, 0, 1

  # loop unit the number is 1000 digits in length
  while i.to_s.length < 1000
    num1 += 1
    
    i, num2 = num2, num2 + i
  end

  num1
end

p fibonacci_digit_counter