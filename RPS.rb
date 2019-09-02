WIN_SCORE_CONST = 5
player_score = 0
computer_score = 0
options = ['rock', 'paper', 'scissors']

#Rules
#If you choose Rock, you will win against Scissors but lose against Paper.
#If you choose Scissors, you will win against Paper but lose against Rock.
#If you choose Paper, you will win against Rock but lose against Scissors.


puts "Welcome to Rock, Paper, Scissors Game \n\n"
while player_score < WIN_SCORE_CONST && computer_score < WIN_SCORE_CONST
   puts "Please select a letter from the menu"
   menu = ["(r) rock", "(p) paper", "(s) scissors"]
   menu.each do |menu_option|
       puts menu_option
   end
   player_choice = gets.chomp.downcase
   if player_choice == "r"
       puts "You selected rock"
   elsif player_choice == "s"
       puts "You selected scisssors"
   elsif player_choice == "p"
       puts "You selected paper"
   else
       puts "You entered an invalid option"
   end
   computer_choice = options.sample
   puts "Computer selected #{computer_choice}"
   computer_choice = computer_choice[0]
   #Rock
   if player_choice == computer_choice
       puts "Tie"
   elsif player_choice == "r" && computer_choice == "s"
       puts "Player Wins"
       player_score = player_score + 1
   elsif player_choice == "r" && computer_choice == "p"
       puts "Computer Wins"
       computer_score = computer_score + 1
   #Scissors
   elsif player_choice == "s" && computer_choice == "p"
       puts "Player Wins"
       player_score = player_score + 1
   elsif player_choice == "s" && computer_choice == "r"
       puts "Computer Wins"
       computer_score = computer_score + 1
   #Paper
   elsif player_choice == "p" && computer_choice == "r"
       puts "Player Wins"
       player_score = player_score + 1
   elsif player_choice == "p" && computer_choice == "s"
       puts "Computer Wins"
       computer_score = computer_score + 1
   else
       puts "Game is Invalid"
   end
   puts "Player Score #{player_score}"
   puts "Computer Score #{computer_score}"
end

