require_relative "lib/board"
require_relative "lib/player"
require_relative "lib/game"

new_game = Game.new
while new_game.game_loop
  break if new_game.condition1
  break if new_game.condition2
  break if new_game.condition3
  break if new_game.condition4
  break if new_game.condition5
  break if new_game.condition6
  break if new_game.condition7
  break if new_game.condition8

  new_game.write_x(new_game.x_input)
  break if new_game.game_loop == false
  break if new_game.condition1
  break if new_game.condition2
  break if new_game.condition3
  break if new_game.condition4
  break if new_game.condition5
  break if new_game.condition6
  break if new_game.condition7
  break if new_game.condition8

  new_game.write_o(new_game.o_input)
end
