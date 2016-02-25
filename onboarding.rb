STDOUT.sync = true # DO NOT REMOVE
# CodinGame planet is being attacked by slimy insectoid aliens.
# <---
# Hint:To protect the planet, you can implement the pseudo-code provided in the statement, below the player.


# game loop
loop do
  
    $enemy1 = gets.chomp
    $dist1 = gets.to_i
    $enemy2 = gets.chomp
    $dist2 = gets.to_i
    
    if $dist1 < $dist2 then
        puts $enemy1
    else
        puts $enemy2
    end

end
