require_relative("lib/inventory.rb")
require_relative("lib/character.rb")
require_relative("lib/game.rb")



mainchar = Character.new([0,0], 10)
newgame = Game.new([5,5], [-1,4])

newgame.game_item("food",[2,2])
newgame.game_item("food",[-3,-4])
newgame.game_item("food",[-4,1])
newgame.game_item("skateboard",[-2,0])
newgame.game_item("flashlight",[-4,1])

newgame.play(mainchar)

