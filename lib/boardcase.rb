class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
attr_accessor :value_letter, :case_identifiant
  
  def initialize (value_letter, case_identifiant)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value_letter = value_letter
    @case_identifiant = case_identifiant
  end
  
end