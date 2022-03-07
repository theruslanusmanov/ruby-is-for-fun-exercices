# Define arrays.
# -------------

@arr1 = Array.new(10, 1)
@arr2 = Array.new(10, 1)


# Attack.
# ------

# Accepts array for attack.
def attack(arr)
  sleep 1
  i = rand(0..9)
  if arr[i] == 1
    arr[i] = 0
    puts "Robot by index #{i} has been destroyed"
  else
    puts "Missed at index #{i}"
  end
  sleep 1
end


# Victory check.
# -------------

def victory?
  robots_left1 = @arr1.count { |x| x == 1 }
  robots_left2 = @arr2.count { |x| x == 1 }

  if robots_left1 == 0
    puts "Team 2 wins, #{robots_left2} robots left"
    return true
  end

  if robots_left2 == 0
    puts "Team 1 wins, #{robots_left1} robots left"
    return false
  end

  false
end


# Stats.
# -----

def stats
  cnt1 = @arr1.count { |x| x == 1 }
  cnt2 = @arr2.count { |x| x == 1 }
  puts "1st team has #{cnt1} robots left"
  puts "2nd team has #{cnt2} robots left"
end


# Main loop.
# ---------

loop do
  puts 'First team is going to attack...'
  attack(@arr2)
  exit if victory?
  stats
  sleep 3
  puts

  puts 'Second team is going to attack...'
  attack(@arr1)
  exit if victory?
  stats
  sleep 3
  puts
end