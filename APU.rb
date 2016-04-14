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
    def initialize(x1, y1, tab, ligne, colonne)
        #attr_accessor :x1, :y1, :tab, :ligne, :colonne 
        @x1=x1.to_i
        @y1=y1.to_i
        @tab=tab
        @ligne=ligne.to_i
        @colonne=colonne.to_i
        
    end
    
    def check_right
        if @y1 < @ligne-1
            if @tab[@x1][@y1+1] == "0"
                n = "1 0"
            else n = "-1 -1"
            end
        else n = "-1 -1"
        end
        return n
    end
    
    def check_bottom
        if @x1 < @colonne-1
            if @tab[@x1+1][@y1] == "0"
                n = "0 1"
            else n = "-1 -1"
            end
        else n = "-1 -1"
        end
        return n
    end
end


 

@tableau.each_with_index do |x,xi|
   #  x.to_s
     #STDERR.puts x.length
    # for i in 0...x.length
    # STDERR.print tab[xi][i]
    x.each_with_index do |y, yi|  
        
        if @tableau[xi][yi] == "0"
            node = Node.new(xi,yi, @tableau, @width, @height)
            print "#{xi} #{yi} #{node.check_right} #{node.check_bottom}\n"
        end
    end
end


    
# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

#puts "0 0 1 0 0 1" # Three coordinates: a node, its right neighbor, its bottom neighbor
