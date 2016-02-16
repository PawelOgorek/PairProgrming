# I dont use leap-year in an exercise

  puts "Please type age in seconds: "
  age_in_seconds = gets.chomp

  puts "Your age is #{age_in_seconds.to_i/(60*60*24*365)} years and #{(age_in_seconds.to_i/(60*60*24*365))%12} months"
