
require 'pry'


class Board 
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué
attr_accessor :board_case_array

  def initialize

  	
	@board_case_array = []

  	@board_case_array << celluleA1 = BoardCase.new("","A1")
  	@board_case_array << celluleA2 = BoardCase.new("","A2")
  	@board_case_array << celluleA3 = BoardCase.new("","A3")
 	@board_case_array << celluleB1 = BoardCase.new("","B1")
  	@board_case_array << celluleB2 = BoardCase.new("","B2")
  	@board_case_array << celluleB3 = BoardCase.new("","B3")
    @board_case_array << celluleC1 = BoardCase.new("","C1")
    @board_case_array << celluleC2 = BoardCase.new("","C2")
  	@board_case_array << celluleC3 = BoardCase.new("","C3")

 
  	return @board_case_array





    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  end

   def play_turn
   # TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire

    


    puts "C'est au tour de #{player1.name}! Où souhaites-tu jouer ?"
	player1_choice = gets.chomp 


	if player1_choice == "A1" 
		@board_case_array[0].value_letter = "X"

	elsif player1_choice == "A2"
	 	 
		@board_case_array[1].value_letter = "X"

	elsif player1_choice == "A3"
	 	 
		@board_case_array[2].value_letter = "X"

	elsif player1_choice == "B1"
		@board_case_array[3].value_letter = "X"

	elsif player1_choice == "B2"
		@board_case_array[4].value_letter = "X"

	elsif  player1_choice =="B3"
		
		@board_case_array[5].value_letter = "X"

	elsif player1_choice == "C1"
		
		@board_case_array[6].value_letter = "X"

	elsif player1_choice == "C2"
		
		@board_case_array[7].value_letter = "X"

	elsif player1_choice =="C3"
		
		@board_case_array[8].value_letter = "X"
	else 
		puts "Entre une case qui existe !"
		puts ">"
		player1_choice = gets.chomp 


	end 




    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end

end

