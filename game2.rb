CHOICES = {'r' => 'rock', 'p' => 'paper', 's' => 'scissors'}

puts "Welcome to Rock, Paper, and Scissors!"

def display_winning_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper wraps Rock!"
  when 'r'
    puts "Rock smashes Scissors!"
  when 's'
    puts "Scissors cuts Paper!"
  end
end

def play
  loop do 
    player_choice = ''
    while !CHOICES.keys.include?(player_choice)
      puts "Choose Rock, Paper or Scissors (r, p, s): "
      player_choice = gets.chomp.downcase
    end  

    # computer picks
    computer_choice = CHOICES.keys.sample
    puts "You chose: #{CHOICES[player_choice]}"
    puts "Computer chose: #{CHOICES[computer_choice]}"

    if player_choice == computer_choice
      puts "Tie"
    elsif (player_choice == 'r' && computer_choice == 's') || (player_choice == 'p' && computer_choice == 'r') || (player_choice == 's' && computer_choice == 'p')
      display_winning_message(player_choice)
      puts "You Win!"
    else
      display_winning_message(computer_choice)
      puts "You lose!"
    end

    puts "Play again? (y/n): "
    break if gets.chomp.downcase != 'y'

  end
end

play