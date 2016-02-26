# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i # the number of temperatures to analyse
@temps = gets.chomp # the n temperatures expressed as integers ranging from -273 to 5526

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
if @n == 0
    puts "0"
else

tab_pos=[]
tab_neg=[]

tab = @temps.split.map {|s| s.to_i}

tab.each do |x| 
    if x < 0
        tab_neg.push(x.to_i.abs)
    else
        tab_pos.push(x.to_i)
    end
end

if tab_pos.empty?
        puts tab_neg.sort[0]*-1
    elsif tab_neg.empty?
        puts tab_pos.sort[0]
    elsif tab_neg.sort[0] < tab_pos.sort[0]
        puts tab_neg.sort[0]*-1
    elsif tab_pos[0] < tab_neg[0]
        puts tab_pos.sort[0]
    elsif tab_pos.sort[0] == tab_pos.sort[0]
        puts tab_pos.sort[0]
    end
end


