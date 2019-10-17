require 'bundler'
Bundler.require

require 'pry'
require_relative 'lib/boardcase'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/show'
#require_relative 'lib/application'
require_relative 'lib/game'


test_game = Game.new
test_game.turn
 




#Application.new.perform

binding.pry