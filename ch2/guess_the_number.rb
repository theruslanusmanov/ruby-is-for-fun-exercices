number = rand(1..10)
print 'Hi! I picked the number from 1 to 10, try to guess: '

loop do
  input = gets.to_i

  if input == number
    puts 'You guessed it!'
    exit
  else
    print 'Nope, try again: '
  end
end
