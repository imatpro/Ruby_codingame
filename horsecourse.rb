# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i
power = []
@n.times do
    pi = gets.to_i
    power.push pi
end

power = power.sort!

difmin = 10000

for i in 0...power.length
    dif = power[i].to_i - power[i+1].to_i
    dif = dif * -1 if dif < 0
    if dif < difmin
        difmin = dif
    end
end
puts difmin
    

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
