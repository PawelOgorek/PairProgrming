puts 'Please provide me a 4 digit year and I check if its leap year'
year = gets.chomp.to_i

if (leap_year?(year))
  puts 'Leap year!!'
else
  puts 'Not leap year'
end

def leap_year?(year)
     if ((year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0))
       true
     else false
     end
end
