STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
# ---
# Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.

# light_x: the X position of the light of power
# light_y: the Y position of the light of power
# initial_tx: Thor's starting X position
# initial_ty: Thor's starting Y position
@light_x, @light_y, @initial_tx, @initial_ty = gets.split(" ").collect {|x| x.to_i}

# game loop
loop do
    remaining_turns = gets.to_i # The remaining amount of turns Thor can move. Do not remove this line.
    x=y=""
 
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    if (@initial_tx < @light_x) && (@initial_ty < @light_y)
        x="E"
        y="S"
        @initial_tx += 1
        @initial_ty += 1
        elsif (@initial_tx > @light_x) && (@initial_ty > @light_y)
            x="W"
            y="N"
            @initial_tx -= 1
            @initial_ty -= 1
        elsif (@initial_tx > @light_x) && (@initial_ty < @light_y)
            x="W"
            y="S"
            @initial_tx -= 1
            @initial_ty += 1
        elsif (@initial_tx < @light_x) && (@initial_ty > @light_y)
            x="E"
            y="N"
            @initial_tx += 1
            @initial_ty -= 1
        elsif (@initial_tx < @light_x) && (@initial_ty == @light_y)
            x="E"
            @initial_tx += 1
        elsif (@initial_tx > @light_x) && (@initial_ty == @light_y)
            x="W"
            @initial_tx -= 1
        elsif (@initial_tx == @light_x) && (@initial_ty < @light_y)
            y="S"
            @initial_ty += 1
        else
            y="N"
            @initial_ty -= 1
        end
        puts y + x # A single line providing the move to be made: N NE E SE S SW W or NW
end
