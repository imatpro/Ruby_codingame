STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# n: the total number of nodes in the level, including the gateways
# l: the number of links
# e: the number of exit gateways

tab = []
all=[]
gw =[]
srv=[]
@n, @l, @e = gets.split(" ").collect {|x| x.to_i}

     
@l.times do
    # n1: N1 and N2 defines a link between these nodes
    n1, n2 = gets.split(" ").collect {|x| x.to_i}
    tab = [n1, n2]
    all.push(tab)       
end


@e.times do
    ei = gets.to_i # the index of a gateway node
    gw.push(ei)

end


# game loop
loop do
    si = gets.to_i # The index of the node on which the Skynet agent is positioned this turn
    
    result=nil
    gw.each do |gate|
        if all.include?([si,gate]) || all.include?([gate,si])
            result = "#{si} #{gate}"
        end
    end
    if result.nil?
        until all.include?([@n,si]) || all.include?([si,@n])
            @n-=1
            result = "#{@n} #{si}"
        end
    end
    puts result      
end
