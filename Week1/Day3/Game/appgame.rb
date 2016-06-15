require_relative("lib/character.rb")
require_relative("lib/game.rb")
require_relative("lib/inventory.rb")

mainchar = Character.new([0,0], 10)
newgame = Game.new([5,5])
newgame.play(mainchar)

