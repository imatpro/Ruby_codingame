# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i # Number of elements which make up the association table.
@q = gets.to_i # Number Q of file names to be analyzed.
exten = Hash.new
files = []
@n.times do
    # ext: file extension
    # mt: MIME type.
    ext, mt = gets.split(" ")
    exten[ext.downcase] = mt
end
@q.times do
    fname = gets.chomp # One file name per line.
    if fname[fname.length-1] == "."
        files.push "UNKNOWN"
    elsif fname.include?"."
        files.push fname.split(".").last
    else files.push "UNKNOWN"
    end
end

result = []

files.each do |x|
    if exten.has_key?(x.downcase)
        result.push exten[x.downcase]
    else result.push "UNKNOWN"
    end
end

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

#puts "UNKNOWN" # For each of the Q filenames, display on a line the corresponding MIME type. If there is no corresponding type, then display UNKNOWN.
