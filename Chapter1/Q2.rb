result = [*1000..9999].select do |i|
  number = i.to_s
  reversed = number.reverse.to_i
  r_1 = number.slice(0, 2).to_i * number.slice(2, 2).to_i # aa * bb
  r_2 = number.slice(0, 1).to_i * number.slice(1, 3).to_i # a * bbb
  r_3 = number.slice(0, 3).to_i * number.slice(3, 1).to_i # aaa * b
  r_4 = number.slice(0, 1).to_i * number.slice(1, 1).to_i * number.slice(2, 2).to_i # a * b * cc
  r_5 = number.slice(0, 1).to_i * number.slice(1, 2).to_i * number.slice(3, 1).to_i # a * bb * c
  [r_1, r_2, r_3, r_4, r_5].any? { |r| r == reversed }
end

p result
