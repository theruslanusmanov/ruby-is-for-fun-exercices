@humans = 10_000
@machines = 10_000


# Auxiliary methods.
# -----------------

# Returns random value: true or false.
def luck?
  rand(0..1) == 1
end

def boom
  diff = rand(1..5)

  if luck?
    @machines -= diff
    puts "#{diff} machines destroyed"
  else
    @humans -= diff
    puts "#{diff} humans killed"
  end
end

# Returns random city name.
def random_city
  dice = rand(1..5)
  if dice == 1
    'San Francisco'
  elsif dice == 2
    'Moscow'
  elsif dice == 3
    'Beijing'
  elsif dice == 4
    'London'
  else
    'Seoul'
  end
end

def random_sleep
  sleep rand(0.3...1.5)
end

def stats
  puts "#{@humans} humans and #{@machines} machines left"
end


# Events.
# ------

def event1
  puts "Missile launched against #{random_city}"
  random_sleep
  boom
end

def event2
  puts "Nuclear weapon used against #{random_city}"
  random_sleep
  boom
end

def event3
  puts "Group of soldiers have breached defence in #{random_city}"
  random_sleep
  boom
end


# Checking victory.
# ----------------

def check_victory?
  false
end


# Main loop.
# ---------

loop do
  if check_victory?
    exit
  end

  dice = rand(1..3)

  if dice == 1
    event1
  elsif dice == 2
    event2
  elsif dice == 3
    event3
  end

  stats
  random_sleep
end