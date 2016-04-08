# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@l = gets.to_i
@h = gets.to_i
@t = gets.chomp

@t.upcase!

tab = @t.split(//)
alpha = ('A'..'Z').to_a
array = []
ascii = []


tab.each do |x|
    if alpha.include?(x)
        idx = alpha.index(x)
        array.push(idx.to_i)
    else
      array.push(26)
    end
end


@h.times do
    row = gets.chomp
    array.each do |y|
      a = array(y) * @l
      b = a + @l -1
      answer = answer + row(a..b)
    end
    ascii << answer
    answer = ""
end




# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@l = gets.to_i
@h = gets.to_i
@t = gets.chomp

@t.upcase!

tab = @t.split(//)
alpha = ('A'..'Z').to_a

@h.times do
            row = gets.chomp        
        end

tab.each do |x|
    if alpha.include?(x)
        idx = alpha.index(x)
        num = idx.to_i * @l
        answer = answer + row[num..num+3]
      else @h.times do
            row = gets.chomp
            puts row[104] + row[105] + row[106] +row[107]
         end
    end
    puts answer
end
         