# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@l = gets.to_i
@h = gets.to_i
@t = gets.chomp

@t.upcase!

tab = @t.split(//)
alpha = ('A'..'Z').to_a


tab.each do |x|
    if alpha.include?(x)
        idx = alpha.index(x)
        num = idx.to_i * @l
        @h.times do
            row = gets.chomp
            puts row[num..num+3]
        end
    else @h.times do
            row = gets.chomp
            puts row[104] + row[105] + row[106] +row[107]
         end
    end
end
