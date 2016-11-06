# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@message = gets.chomp

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
tab = []
reponse = ""
binaire = ""
answer = ""
array = []

tab = @message.split(//)

tab.each do |x|
    binaire = x.unpack("B*")
    binaire = binaire.join
    binaire = binaire[1...binaire.length]
    reponse = reponse + binaire.to_s
end

array = reponse.split(//)
test = 2
array.each do |x|
    if x == "1"
        if test != 1
            answer += " 0 0"
        else answer += "0"
        end
        test = 1
    elsif x == "0"
        if test == 0
            answer += "0"
        else answer += " 00 0"
        end
        test = 0
    end
end

puts answer.strip
