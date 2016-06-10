puts "What is the source file?"
source = gets.chomp
content = IO.read(source)
puts "What is the destination file?"
name = gets.chomp

IO.write(name,content)
