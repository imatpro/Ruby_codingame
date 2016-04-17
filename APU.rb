STDOUT.sync = true # DO NOT REMOVE
# Don't let the machines win. You are humanity's last hope...

@width = gets.to_i # the number of cells on the X axis
@height = gets.to_i # the number of cells on the Y axis
@tableau=[]

@height.times do
    line = gets.chomp # width characters, each either 0 or .
    line = line.split(//)
    @tableau.push(line)
end


class Node
    def initialize(x1, y1, tab, colonne, ligne)
        #attr_accessor :x1, :y1, :tab, :ligne, :colonne 
        @x1=x1.to_i
        @y1=y1.to_i
        @tab=tab
        @ligne=ligne.to_i
        @colonne=colonne.to_i    
    end
    
    def check_right
        n = "-1 -1"
        if @y1 < @colonne-1
            nb=@y1+1
            while @tab[@x1][nb] != "0" && nb < @colonne-1 do 
                nb+=1
            end
            n = "#{nb} #{@x1}" if @tab[@x1][nb] == "0"
        end
        return n
    end
    
    def check_bottom
        n = "-1 -1"
        if @x1 < @ligne-1
            nb=@x1+1
            while @tab[nb][@y1] != "0" && nb < @ligne-1 do 
                nb+=1
            end
            n = "#{@y1} #{nb}" if @tab[nb][@y1] == "0"
        end
        return n
    end
end

@tableau.each_with_index do |y,yi|
    y.each_with_index do |x, xi|
        if @tableau[yi][xi] == "0"
            node = Node.new(yi,xi, @tableau, @width, @height)
            print "#{xi} #{yi} #{node.check_right} #{node.check_bottom}\n"
        end
    end
end


    
# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

#puts "0 0 1 0 0 1" # Three coordinates: a node, its right neighbor, its bottom neighbor
