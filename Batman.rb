STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# w: width of the building.
# h: height of the building.
@w, @h = gets.split(" ").collect {|x| x.to_i}
@n = gets.to_i # maximum number of turns before game over.
@x0, @y0 = gets.split(" ").collect {|x| x.to_i}

tab = Array.new(@h) { Array.new(@w) {"."} }
#tab[@y0][@x0]="B"
STDERR.puts @w, @h
STDERR.puts tab.first.length
# game loop
class Batman
  attr_accessor :x, :y
  def initialize(x, y, tab, w, h)
    @x=x
    @y=y
    @tab=tab
    @w=w
    @h=h
    @@last_move = "START"
    @@old_x=x
    @@old_y=y
  end
  def right
    @@last_move = "R"
    @@old_x = @x
    result = "#{@x+1} #{@y}"
    self.x = @x+1

    return result
  end
  def left
    @@last_move = "L"
    @@old_x = @x
    result = "#{@x-1} #{@y}"
    self.x = @x-1
    return result
  end
  def up
    #@@old_y = @y
    if @@last_move == "D"
      STDERR.puts @@old_y
      i= (@@old_y-@y)/2
      result = "#{@x} #{@y-i}"
    end
    if @@last_move == "U"
      i= (@h-@y)/2
      result = "#{@x} #{@y-i}"
    end
    @@old_y = @y
    self.y = @y-i
    @@last_move = "U"
    return result
  end
  def down
    if @@last_move == "START"
      i = (@h-@y)/2
      result = "#{@x} #{@y+i}"
      #@@last_move = "D"
    end

    if @@last_move == "D"
      i=(@@old_y-@y)/2
      result = "#{@x} #{@y+i}"

    end
    if @@last_move == "U"
      i=(@@old_y - @y)/2
      result = "#{@x} #{@y+i}"

    end
    @@old_y = @y
    self.y = @y+i
    @@last_move = "D"
    return result

  end
  def dr
    @@last_move = "DR"
    @@old_x = @x
    @@old_y = @y
    result = "#{@x+1} #{@y+1}"
    self.x = @x+1
    self.y = @y+1
    return result
  end
  def dl
    @@last_move = "DL"
    @@old_x = @x
    @@old_y = @y
    result = "#{@x-1} #{@y+1}"
    self.x = @x-1
    self.y = @y+1
    return result
  end
  def ul
    @@last_move = "UL"
    @@old_x = @x
    @@old_y = @y
    result = "#{@x-1} #{@y-1}"
    self.x = @x-1
    self.y = @y-1
    return result
  end
  def ur
    @@last_move = "UR"
    @@old_x = @x
    @@old_y = @y
    result = "#{@x+1} #{@y-1}"
    self.x = @x+1
    self.y = @y-1
    return result
  end


end

bat = Batman.new(@x0,@y0,tab,@w,@h)

loop do
  bomb_dir = gets.chomp # the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)
  STDERR.puts bomb_dir
  # Write an action using puts
  # To debug: STDERR.puts "Debug messages..."

  case bomb_dir
    when "D"
      puts bat.down
    when "U"
      puts bat.up
    when "R"
      puts bat.right
    when "L"
      puts bat.left
    when "DR"
      puts bat.dr
    when "DL"
      puts bat.dl
    when "UL"
      puts bat.ul
    when "UR"
      puts bat.ur
    else
      STDERR.puts "ERROR"
  end


  # location of the next window Batman should jump to.

end