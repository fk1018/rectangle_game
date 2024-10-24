# you are creating a rectangle builder that returns the sum of all the rectangles you can create
# you are given an array of side lengths
# each side can be used for only one rectangle
# it takes two sides of the same length to make a pair
# it takes two pairs to create a rectangle
# you may increase a side by + or - 1
# all four sides of a rectangle cannot be the same size
MODDED = 'MODDED'.freeze
NO_MOD = 'NA'.freeze

def calculate_max_area_of_a_rectangle(a_sides, b_sides)
  a_side = a_sides[0]
  a_mod = a_sides[1]
  b_side = b_sides[0]
  b_mod = b_sides[1]
  if a_mod == MODDED && b_mod == MODDED
    a_side * b_side
  elsif a_mod == NO_MOD && b_mod == NO_MOD
    if a_side == b_side
      (a_side + 1) * b_side
    else
      (a_side + 1) * (b_side + 1)
    end
  elsif a_mod == MODDED
    if a_side == b_side + 1
      a_side * b_side
    else
      a_side * (b_side + 1)
    end
  else
    (a_side + 1) * b_side
  end
end

def play_game(sticks)
  total_area = 0
  pair_a = []
  pair_b = []
  sorted_sticks = sticks.sort { |a, b| b <=> a }
  sorted_sticks.each do |stick|
    if pair_a.empty?
      pair_a << stick
    elsif pair_a.length == 1
      if stick == pair_a[0]
        pair_a << NO_MOD
      elsif stick + 1 == pair_a[0]
        pair_a << MODDED
      elsif stick + 1 == pair_a[0] - 1
        new_pair_a = pair_a[0] - 1
        pair_a = [new_pair_a, MODDED]
      else
        pair_a = [stick]
      end
    elsif pair_a.length == 2
      if pair_b.length == 1
        if stick == pair_b[0]
          pair_b << NO_MOD
          total_area += calculate_max_area_of_a_rectangle(pair_a, pair_b)
          pair_a = []
          pair_b = []
        elsif stick + 1 == pair_b[0]
          pair_b << MODDED
          total_area += calculate_max_area_of_a_rectangle(pair_a, pair_b)
          pair_a = []
          pair_b = []
        elsif stick + 1 == pair_b[0] - 1
          new_pair_b = pair_b[0] - 1
          pair_b = [new_pair_b, MODDED]
          total_area += calculate_max_area_of_a_rectangle(pair_a, pair_b)
          pair_a = []
          pair_b = []
        end
      else
        pair_b = [stick]
      end
    end
  end
  total_area
end

# tests
array1 = [1, 5, 1, 2, 3, 9, 3, 2, 2, 5]
array2 = [2, 3, 3, 2, 4, 4, 5, 5]
array3 = [4, 4, 4, 4, 5, 5, 5, 5]
array4 = [2, 3, 1, 6, 7, 8]
array5 = [8, 7, 7, 8, 9, 6, 6, 9]
array6 = [2, 2, 2, 2, 2, 2, 2, 2]
puts play_game(array1) == 30
puts play_game(array2) == 42
puts play_game(array3) == 50
puts play_game(array4) == 0
puts play_game(array5) == 146
puts play_game(array6) == 12
