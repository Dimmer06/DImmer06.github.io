class Player
  def initialize(sym)
    @sym = sym
  end
  def move
    entered = false
    begin
      begin
        puts "x coordinate?"
        x = gets.to_i
        redo if x > 2
      end until x != nil
      begin
        puts "y coordinate?"
        y = gets.to_i
        redo if y > 2
      end until y != nil
      redo if $board[y].at(x) != "-"
      $board[y].delete_at(x)
      $board[y].insert(x,"#{@sym}")
      entered = true
    end until entered == true
  end
end

$board = [["-","-","-"],["-","-","-"],["-","-","-"]]

player1 = Player.new("x")
player2 = Player.new("o")

def puts_board
  puts "#{$board[2][0]} #{$board[2][1]} #{$board[2][2]}"
  puts "#{$board[1][0]} #{$board[1][1]} #{$board[1][2]}"
  puts "#{$board[0][0]} #{$board[0][1]} #{$board[0][2]}"
end

def check_board
  if ($board[0][0] == "x" && $board[0][1] == "x" && $board[0][2] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[0][0] == "o" && $board[0][1] == "o" && $board[0][2] == "o")
    puts "Player 2 wins"
    abort
  elsif ($board[1][0] == "x" && $board[1][1] == "x" && $board[1][2] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[1][0] == "o" && $board[1][1] == "o" && $board[1][2] == "o")
    puts "Player 2 wins"
    abort
  elsif ($board[2][0] == "x" && $board[2][1] == "x" && $board[2][2] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[2][0] == "o" && $board[2][1] == "o" && $board[2][2] == "o")
    puts "Player 2 wins"
    abort
  elsif ($board[0][0] == "x" && $board[1][0] == "x" && $board[2][0] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[0][0] == "o" && $board[1][0] == "o" && $board[2][0] == "o")
    puts "Player 2 wins"
    abort
  elsif ($board[0][1] == "x" && $board[1][1] == "x" && $board[2][1] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[0][1] == "o" && $board[1][1] == "o" && $board[2][1] == "o")
    puts "Player 2 wins"
    abort
  elsif ($board[0][2] == "x" && $board[1][2] == "x" && $board[2][2] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[0][2] == "o" && $board[1][2] == "o" && $board[2][2] == "o")
    puts "Player 2 wins"
    abort
  elsif ($board[0][0] == "x" && $board[1][1] == "x" && $board[2][2] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[0][0] == "o" && $board[1][1] == "o" && $board[2][2] == "o")
    puts "Player 2 wins"
    abort
  elsif ($board[0][2] == "x" && $board[1][1] == "x" && $board[2][0] == "x")
    puts "Player 1 wins"
    abort
  elsif ($board[0][2] == "o" && $board[1][1] == "o" && $board[2][0] == "o")
    puts "Player 2 wins"
    abort
  end
end
puts "0, 0 is the bottom left, 2,2 is the top right. Sorry arrays work like that and I'm lazy."
$x = 0
until $x > 8
  puts_board
  player1.move
  check_board
  $x += 1
  puts_board
  player2.move
  check_board
  $x += 1
end
puts "Nobody wins"
abort
