#encode : cp866
puts "\tHello, welcome to ArcadeAutomatic!!!"
puts
sleep rand(0..3)
puts "\tIn this game you have to beat out BINGO!\n\tBingo is three numbers: 7 7 7"
sleep rand(0..3)
print "\tEnter you name : "
name = gets.strip.capitalize
puts

print "\t#{name} will you play the game? (Y/N) : "
answer = gets.strip.capitalize

print "\t#{name} how old are you ? : "
years = gets.strip.to_i
puts
if answer == "Y" && years > 18
  puts "\tGo to play!"
else puts "You must agree to play and your age should be more than 18"
exit
puts
end

print "\t#{name} how much money do you have: "
money = gets.strip.to_i

print "\t#{name} how many times will you play: "
cg = gets.strip.to_i

cg.times do

  print "\tClick ENTER to start "
  gets
  puts    "\t--------------------"
  puts
  x = rand(0..7)
  x = x.to_i

  y = rand(0..7)
  y = y.to_i

  z = rand(0..7)
  z = z.to_i

  #000
  if x == 0 &&  y == 0 &&  z == 0

    puts "\tYou number #{x} #{y} #{z} and you receive 0  coins "
    money = 0
    sleep 1
    puts  "\tУou are bankrupt.Goodbay!"
    exit
  end

  #111
  if x == 1 &&  y == 1 &&  z == 1
    puts "\tYou number #{x} #{y} #{z} and you receive 10  coins "
    money = money + 10
    puts "\n\tYour balance becomes = #{money} coins"

    #222
  elsif  x == 2 &&  y == 2 &&  z == 2
    puts "\tYou number #{x} #{y} #{z} and you receive 20  coins "
    money = money + 20
    puts "\n\tYour balance becomes = #{money} coins"

    #333
  elsif x == 3 &&  y == 3 &&  z == 3
    puts "\tYou number #{x} #{y} #{z} and you receive 30  coins "
    money = money + 30
    puts "\n\tYour balance becomes = #{money} coins"

    #777
  elsif  x == 7 &&  y == 7 &&  z == 7
    puts "\tYou number #{x} #{y} #{z}."
    puts "Bingo, you beat ArcadeAutomatic and get 1 000 000 coins!!! "
    money = 1000000
    puts "\n\tYour balance becomes = #{money} coins"
    exit
  else money = money - 10
  puts "\tYou number #{x} #{y} #{z} and you lost 10 coins\n\n\tYour balance becomes = #{money} coins"
  puts
  sleep 1
  end

end
print "\tYour final balance was #{money} coins \n\n\tThan's to the game!"
