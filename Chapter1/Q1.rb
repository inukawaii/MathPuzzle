def is_palindromic?(number)
  half = number.length / 2
  [*0..half - 1].all? do |i|
    number.slice(i) == number.slice(-1 - i)
  end
end

number = 10
result = nil

while result.nil? do
  if is_palindromic?(number.to_s(2)) && is_palindromic?(number.to_s(8)) && is_palindromic?(number.to_s(10))
    result = number
  else
    number += 1
  end
end

p number
