# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@lon = gets.chomp.gsub!(",",".")
@lat = gets.chomp.gsub!(",",".")
@n = gets.to_i
info = []
dist = Hash.new
@n.times do
    defib = gets.chomp.gsub!(",",".")
    info = defib.split(";")
    x = (info[4].to_f - @lon.to_f) * Math.cos((@lat.to_f + info[5].to_f)/2)
    y = (info[5].to_f - @lat.to_f)
    d = Math.sqrt((x*x)+(y*y)) * 6371
    dist[d]=info[1]    
end

tri = dist.sort
puts tri.first.last

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
