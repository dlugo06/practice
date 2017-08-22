def streetFighterSelection(fighters, position, moves)
	chars = []
  map = {'up': -1, 'down': 1, "left": -1, 'right': 1}
  moves.each do |move|
    move = move.to_sym
    vertical = position.first % 2
    horizontal = position.last % 6

    if move == :left or move == :right
      chars << fighters[vertical][(position.last + map[move]) % 6]
      position[1] += map[move]
    elsif (move == :up and vertical == 0) or (move == :down and vertical == 1)
        chars << fighters[vertical][horizontal]
    else
        chars << fighters[(position.first + map[move]) % 2][horizontal]
        position[0] += map[move]
    end
  end
  chars
end

fighters = [
  ["Ryu", "E.Honda", "Blanka", "Guile", "Balrog", "Vega"],
  ["Ken", "Chun Li", "Zangief", "Dhalsim", "Sagat", "M.Bison"]
]

moves = ['up', 'left', 'right', 'left', 'left']
# moves = ['up', 'down', 'down', 'down', 'left']

streetFighterSelection(fighters, [0,0], moves) #['Ryu', 'Vega', 'Ryu', 'Vega', 'Balrog']
