puts "Give me integer number"

value = gets.chomp
v_length = value.to_s.length
i =1

while i <= value.to_i do
  puts format "Line %#{v_length}i : output line %#{v_length}i", i, i
  i = i + 1
end
