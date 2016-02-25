STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.


# game loop
loop do
    space_x, space_y = gets.split(" ").collect {|x| x.to_i}
    y = h = 0
    8.times do |x|
        mountain_h = gets.to_i # represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
        if h < mountain_h
            h = mountain_h
            y = x
        end   
    end
    if space_x == y
        puts "FIRE"
    else
        puts "HOLD"
    end
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
     # either:  FIRE (ship is firing its phase cannons) or HOLD (ship is not firing).
end
