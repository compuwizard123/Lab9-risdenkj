$stdout.sync = true
puts 'What is your name?'
name = gets.chomp
puts "Hello, #{name}!"
puts "[1] Twister"
puts "[2] Hearts"
puts "[3] Checkers"
puts "[4] Trouble"
puts "[5] Global Thermonuclear War"
sel = gets.chomp.to_i
if 0 < sel and sel < 5
  puts 'Wrong game choice'
elsif sel == 5
  puts 'BOOM!'
else
  puts 'Invalid game choice'
end
exit(0)
