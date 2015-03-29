# 1. All players pick either: Rock, Paper, or Scissors
# 2. compare: paper > rock, rock > scissors, scissors > paper 
# 
require 'pry'

CHOICES = {'r' => 'rock', 'p' => 'paper', 's' => 'scissors'}

def players_choice
  @choice1 = gets.chomp.downcase
  puts "You chose: #{CHOICES[@choice1]}"
end

def computers_choice
  @choice2 = CHOICES.keys.sample
  puts "Computer chose: #{CHOICES[@choice2]}"
end

def choose_winner
  if @choice1 == 'r' && @choice2 == 's'
    puts "You win"
  elsif @choice1 == 'r' && @choice2 == 'p'
    puts "Computer wins"
  elsif @choice1 == 'p' && @choice2 == 'r'
    puts "You win"
  elsif @choice1 == 'p' && @choice2 == 's'
    puts "Computer wins"
  elsif @choice1 == 's' && @choice2 == 'r'
    puts "Computer wins"
  elsif @choice1 == 's' && @choice2 == 'p'
    puts "You win"
  end
end

def play
  loop do 
    puts "Choose Rock, Paper or Scissors (r, p, s): "
    players_choice
    computers_choice
    choose_winner
  end
end

play