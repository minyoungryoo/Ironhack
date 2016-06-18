require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")
require_relative("lib/chess.rb")

# black_rock_right = Rook.new(8,8,"black")
# p black_rock_right.can_move?(8, 5) == true
# p black_rock_right.can_move?(4, 8) == true
# p black_rock_right.can_move?(5, 5) == false
# p black_rock_right.can_move?(3, 6) == false


# puts ""

# black_king = King.new(4, 8, "black")

# puts "King Tests"
# p black_king.can_move?(5, 7) == true #forward
# p black_king.can_move?(4, 7) == true
# p black_king.can_move?(3, 7) == true
# p black_king.can_move?(3, 8) == true
# p black_king.can_move?(6, 7) == false #diagonal
# p black_king.can_move?(1, 1) == false #diagonal


# puts ""

# black_bishop = Bishop.new(6, 8, "black")

# puts "Bishop"
# p black_bishop.can_move?(7, 7) == true
# p black_bishop.can_move?(5, 7) == true
# p black_bishop.can_move?(4, 6) == true
# p black_bishop.can_move?(3, 5) == true
# p black_bishop.can_move?(8, 6) == true
# p black_bishop.can_move?(6, 5) == false


# puts ""

# black_knight = Knight.new(7, 8, "black")

# puts "Knight"
# p black_knight.can_move?(8, 6) == true
# p black_knight.can_move?(6, 6) == true
# p black_knight.can_move?(5, 7) == true
# p black_knight.can_move?(5, 4) == false
# p black_knight.can_move?(6, 7) == false
# p black_knight.can_move?(7, 6) == false


# puts ""

# black_queen = Queen.new(5, 8, "black")

# puts "Queen"
# p black_queen.can_move?(5, 7) == true
# p black_queen.can_move?(6, 7) == true
# p black_queen.can_move?(4, 7) == true
# p black_queen.can_move?(5, 3) == true
# p black_queen.can_move?(8, 5) == true
# p black_queen.can_move?(1, 4) == true
# p black_queen.can_move?(4, 6) == false
# p black_queen.can_move?(6, 5) == false



# puts ""

# black_pawn = Pawn.new(5, 3, "black")

# puts "Black Pawn"
# # p black_pawn.can_move?(5, 5) == true
# p black_pawn.can_move?(5, 2) == true
# # p black_pawn.can_move?(5, 3) == true
# # p black_pawn.can_move?(5, 2) == true
# p black_pawn.can_move?(5, 6) == false

# white_pawn = Pawn.new(6, 4, "white")

# puts "White Pawn"
# # p white_pawn.can_move?(6,4) == true
#  p white_pawn.can_move?(6,5) == true
# # p white_pawn.can_move?(6,6) == true
# p white_pawn.can_move?(6,3) == false

my_board = Board.new
black_rook_left = Rook.new(1,8,"black", "rook_BL")
black_knight_left = Knight.new(2, 8, "black", "knight_BL")
black_bishop_left = Bishop.new(3, 8, "black", "bishop_BL")
black_king = King.new(4, 8, "black", "king_B")
black_queen = Queen.new(5, 8, "black", "queen_B")
black_bishop_right = Bishop.new(6, 8, "black", "bishop_BR")
black_knight_right = Knight.new(7, 8, "black", "knight_BR")
black_rook_right = Rook.new(8,8,"black", "rook_BR")

black_pawn1 = Pawn.new(1, 7, "black", "pawn_B1")
black_pawn2 = Pawn.new(2, 7, "black", "pawn_B2")
black_pawn3 = Pawn.new(3, 7, "black", "pawn_B3")
black_pawn4 = Pawn.new(4, 7, "black", "pawn_B4")
black_pawn5 = Pawn.new(5, 7, "black", "pawn_B5")
black_pawn6 = Pawn.new(6, 7, "black", "pawn_B6")
black_pawn7 = Pawn.new(7, 7, "black", "pawn_B7")
black_pawn8 = Pawn.new(8, 7, "black", "pawn_B8")

white_rook_left = Rook.new(1, 1,"white", "rook_WL")
white_knight_left = Knight.new(2, 1, "white", "knight_WL")
white_bishop_left = Bishop.new(3, 1, "white", "bishop_WL")
white_king = King.new(4, 1, "white", "king_W")
white_queen = Queen.new(5, 1, "white", "queen_W")
white_bishop_right = Bishop.new(6, 1, "white", "bishop_WR")
white_knight_right = Knight.new(7, 1, "white", "knight_WR")
white_rook_right = Rook.new(8,1,"white", "rook_WR")

white_pawn1 = Pawn.new(1, 2, "white", "pawn_W1")
white_pawn2 = Pawn.new(2, 2, "white", "pawn_W2")
white_pawn3 = Pawn.new(3, 2, "white", "pawn_W3")
white_pawn4 = Pawn.new(4, 2, "white", "pawn_W4")
white_pawn5 = Pawn.new(5, 2, "white", "pawn_W5")
white_pawn6 = Pawn.new(6, 2, "white", "pawn_W6")
white_pawn7 = Pawn.new(7, 2, "white", "pawn_W7")
white_pawn8 = Pawn.new(8, 2, "white", "pawn_W8")



my_board.add_piece(black_rook_left)
my_board.add_piece(black_knight_left)
my_board.add_piece(black_bishop_left)
my_board.add_piece(black_king)
my_board.add_piece(black_queen)
my_board.add_piece(black_bishop_right)
my_board.add_piece(black_knight_right)
my_board.add_piece(black_rook_right)

my_board.add_piece(black_pawn1)
my_board.add_piece(black_pawn2)
my_board.add_piece(black_pawn3)
my_board.add_piece(black_pawn4)
my_board.add_piece(black_pawn5)
my_board.add_piece(black_pawn6)
my_board.add_piece(black_pawn7)
my_board.add_piece(black_pawn8)

my_board.add_piece(white_rook_left)
my_board.add_piece(white_knight_left)
my_board.add_piece(white_bishop_left)
my_board.add_piece(white_king)
my_board.add_piece(white_queen)
my_board.add_piece(white_bishop_right)
my_board.add_piece(white_knight_right)
my_board.add_piece(white_rook_right)

my_board.add_piece(white_pawn1)
my_board.add_piece(white_pawn2)
my_board.add_piece(white_pawn3)
my_board.add_piece(white_pawn4)
my_board.add_piece(white_pawn5)
my_board.add_piece(white_pawn6)
my_board.add_piece(white_pawn8)
my_board.add_piece(white_pawn7)


# p my_board.can_move?([2,7], [4,4])
# p my_board.can_move?([7,7], [2,6])
# p my_board.can_move?([2,7], [10,10])

# p my_board.move(black_rook_right, 8, 5)
# p my_board.move(black_rook_right, 4, 8)

my_board.move(black_rook_right, 8, 5)


new_game = Chess.new(my_board)
new_game.gui










