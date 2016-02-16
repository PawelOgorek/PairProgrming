puts "Provide input scale (C - Celsius, K - Kelvin, F - Fahrenheit, R - Rankine) "
input_scale = gets.chomp

puts "Provide output scale (C - Celsius, K - Kelvin, F - Fahrenheit, R - Rankine) "
output_scale = gets.chomp

puts "Provide value"
input_value = gets.chomp

converted_value = nil
convertion = input_scale.capitalize + output_scale.capitalize

puts convertion

if input_scale.eql?(output_scale)
  converted_value = input_value.to_f
elsif convertion.eql?('CK')
  converted_value = input_value.to_f + 273.15
elsif convertion.eql?('CF')
  converted_value = input_value.to_f * 9 / 5 + 32
elsif convertion.equal?('CR')
  converted_value = (input_value.to_f + 273.15) * 9/5
elsif convertion.eql?('KC')
  converted_value = input_value.to_f - 273.15
elsif convertion.eql?('KF')
  converted_value = input_value.to_f * 9/5 - 459.67
elsif convertion.eql?('KR')
  converted_value = input_value.to_f * 9/5
elsif convertion.eql?('FC')
  converted_value = input_value.to_f - 32 * 5/9
elsif convertion.eql?('FK')
  converted_value = input_value.to_f + 459.67 * 5/9
elsif convertion.eql?('FR')
  converted_value = input_value.to_f + 459.67
elsif convertion.eql?('RC')
  converted_value = (input_value.to_f - 491.67) * 5/9
elsif convertion.eql?('RK')
  converted_value = input_value.to_f * 5/9
elsif convertion.eql?('RF')
  converted_value = input_value.to_d - 459.67
else
  puts "Incorrect input or output value. Yours values are #{input_scale} and #{output_scale}"
end

  puts  "Your converted temperature form #{input_scale} to #{output_scale} equal #{converted_value}"
