str = 'the quick brown fox jumps over the lazy dog'
arr = str.split(' ')
hh = Hash.new(0)

arr.each do |word|
  hh[word] += 1
end

puts hh.inspect
