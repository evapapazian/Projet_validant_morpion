
class Game < Show
  
attr_accessor  :player_array, :player1, :player2

attr_accessor :board_case_array


  def initialize
    

# 1- Création des joueurs et message de bienvenue



    puts "                                       Bienvenue sur le jeu du morpion !!"

    puts "                                         1             2             3          "
    puts "                                                                                "
    puts "                                                |              |                "
    puts "                                 A              |              |                "
    puts "                                 -----------------------------------------------"
    puts "                                 B              |              |                "
    puts "                                                |              |                "
    puts "                                 -----------------------------------------------"
    puts "                                 C              |              |                "
    puts "                                                |              |                "
                                                 

#On créée nos deux players et on les met dans un array

@player_array = []

puts "Joueur 1, quel est ton nom ?"
name = gets.chomp 
@player1 = Player.new(name, "X")
puts "#{player1.name} tu as les X !"



puts "Joueur 2, quel est ton nom ?"
name = gets.chomp 
@player2 = Player.new(name, "O")
puts "#{player2.name} tu as les O!"

puts player1.name
@player_array << player1
@player_array << player2

#2- Créer le board 

  end

  def turn
#Cette def utilise trois méthodes, show_board, play_turn et victory? pour mettre en place le jeu
  
    #show_board
    play_turn
    #victory?

  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
    nouvelle_partie = Board.new 
  end

  #def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  #end    





end


#binding.pry