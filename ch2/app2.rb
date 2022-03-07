puts 'Your age?'
age = gets.to_i
puts 'Do you agree to our terms and conditions (y/n)'
answer = gets.chomp.downcase
if age >= 18 && answer == 'y'
  puts 'Access granted'
end
