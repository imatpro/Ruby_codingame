STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@road = gets.to_i # the length of the road before the gap.
@gap = gets.to_i # the length of the gap.
@platform = gets.to_i # the length of the landing platform.

# game loop
loop do
    speed = gets.to_i # the motorbike's speed.
    coord_x = gets.to_i # the position on the road of the motorbike.
    if coord_x == @road -1
        puts "JUMP"
    elsif coord_x > @road -1
        puts "SLOW"
    elsif speed == @gap +1
        puts "WAIT"
    elsif speed > @gap +1
        puts "SLOW"
    elsif 
        puts"SPEED"
    end
        
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
end
