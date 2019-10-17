
require 'pry'


class Board 

attr_accessor :board_case_array

  def initialize

#On initialise nos 9 case qu'on rentre dans le tableau board_case_array. Il y a 2 @ car la méthode s'applique à tte la classe.  	
	@@board_case_array = []

  	@@board_case_array << celluleA1 = BoardCase.new("","A1")
  	@@board_case_array << celluleA2 = BoardCase.new("","A2")
  	@@board_case_array << celluleA3 = BoardCase.new("","A3")
 	@@board_case_array << celluleB1 = BoardCase.new("","B1")
  	@@board_case_array << celluleB2 = BoardCase.new("","B2")
  	@@board_case_array << celluleB3 = BoardCase.new("","B3")
    	@@board_case_array << celluleC1 = BoardCase.new("","C1")
    	@@board_case_array << celluleC2 = BoardCase.new("","C2")
  	@@board_case_array << celluleC3 = BoardCase.new("","C3")

 
  	return @@board_case_array
  end

#Version avec la méthode de Pol-Erwan (une autre méthode plus bas)

   def play_turn
  
#On créée un tableau vide qui servira à remplir les cases du morpion.Chaque cellule prend la valeur i + 1 à chaque tour de boucle

  empty = []


 		  i = 0
		  while i < 10
			empty[i] = " "
			i = i + 1
			
		  end 


		  j = 0
		  while j < 10			#On lance une seconde boucle qui va mettre à jour l'aspect visuel du morpion (<10 car le jeu s'arrêt après 9 tours puisque toutes les cases sont remplies)

puts "    1   2   3"
puts "  +---+---+---+"
print "A | "
print "#{empty[1]}"
print " | "
print "#{empty[2]}"
print " | "
print "#{empty[3]}"
puts " | "

puts "  +---+---+---+"
print "B | "
print "#{empty[4]}"
print " | "
print "#{empty[5]}"
print " | "
print "#{empty[6]}"
puts " | "

puts "  +---+---+---+"
print "C | "
print "#{empty[7]}"
print " | "
print "#{empty[8]}"
print " | "
print "#{empty[9]}"
puts " | "
puts "  +---+---+---+"


puts " " 
puts "Dans quelle case veux-tu aller ?"
choice = gets.chomp.upcase 
puts ">"
z = 1


#Partie à revoir, pas trop claire
@@board_case_array.each do |item|

  if choice != item
	puts "Mets un bon numéro de case banane!"
	z = z + 1
  else
	puts "gets.chomp = #{item} position = #{z}."
	
		if empty[z] == " "

			if j%2 == 0 	
				empty [z] = "X" 
			else
				empty [z] = "O"
			end
			j = j + 1
		else 
			puts "occupé"
		end

  end

end




if j > 4 #j>4 car il faut minimum 4 tours pour réussir à gagner

if empty[0] == empty[1] && empty[2]
puts "WIN 0 1 2"
#break
end
if empty[3] == empty[4] && empty[5]
puts "WIN 3 4 5"
#break
end
if empty[6] == empty[7] && empty[8]
puts "WIN 6 7 8"
#break
end
if empty[0] == (empty[3] && empty[6])
puts "WIN 0 3 6"
#break
end
if empty[1] == (empty[4] && empty[7])
puts "WIN 1 4 7"
#break
end
if empty[2] == (empty[5] && empty[8])
puts "WIN 2 5 8"
#break
end
if empty[0] == (empty[4] && empty[8])
puts "WIN 0 4 8"
#break
end

end


end

puts "GAME OVER"
 
end


end

#Ma version (si quelqu'un parvient à trouver une solution à l'erreur No metho error [], je suis preneuse)

#def play_turn 

#puts "C'est au tour de #{player1.name}! Où souhaites-tu jouer ?"
	#player1_choice = gets.chomp 


	#if player1_choice == "A1" 
		#@board_case_array[0].value_letter = "X"

	#elsif player1_choice == "A2"
	 	 
		#@board_case_array[1].value_letter = "X"

	#elsif player1_choice == "A3"
	 	 
		#@board_case_array[2].value_letter = "X"

	#elsif player1_choice == "B1"
		#@board_case_array[3].value_letter = "X"

	#elsif player1_choice == "B2"
		#@board_case_array[4].value_letter = "X"

	#elsif  player1_choice =="B3"
		
		#@board_case_array[5].value_letter = "X"

	#elsif player1_choice == "C1"
		
		#@board_case_array[6].value_letter = "X"

	#elsif player1_choice == "C2"
		
		#@board_case_array[7].value_letter = "X"

	#elsif player1_choice =="C3"
		
		#@board_case_array[8].value_letter = "X"
	#else 
		#puts "Entre une case qui existe !"
		#puts ">"
		#player1_choice = gets.chomp 


	#end 




    
  #end

  def victory?
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
  end































    
