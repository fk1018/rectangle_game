
# you are creating a rectangle builder that returns the total creates sum of all the rectangles you can build
# you are given an array of side lengths
# each side can be used for only one rectangle
# it takes two sides of the same length to make a pair
# it takes two pairs to create a rectangle
# you may increase a side by + or - 1
# all four sides of a rectangle cannot be the same size
def calculate_max_area_of_a_rectangle(a_sides,b_sides)
  # if a and by both had modifiers calc normal rectangle size
  # else if both have no mods
  # # if a and b are equal
  # # # area = (a+1) * b
  # # else
  # # # area = (a+1) * (b+1)
  # else if a has mod
  # # if a == b+1
  # # # area = a * b
  # # else
  # # # area = a * (b+1)
  # else b has mod
  # # area = (a+1) * b
end
def play_game(sticks)
  # iterate over sticks
  # if pair a length is 0
  # # pair a[0] = stick
  # else if pair a length is 1
  # # if stick is equal to pair a [0]
  # # # set pair_a[1] to stick
  # # else if u can increase stick +1 to equal pair_a[0]
  # # # stick+=1
  # # # pair_a[1] = stick
  # # # pair_a[2] = "+"
  # # else if you can descrease pair_a[0] by 1 and increase stick by one and they are equal
  # # # new_pair_a_0 = pair_a[0]-1
  # # # pair_a = [new_pair_a,stick+1]
  # # # pair_a[2] = "-+"
  # # else pair a is a dud
  # # # set pair_a[0]=stick
  # else if pair_a length is >= 2 meaning u have 1 pair and maybe a modifier
  # # if pair_b length is 1
  # # # if stick is equal to pair_b[0]
  # # # # pair b [1] = stick both pairs are
  # # # # get largest area of pair_a and pair_b
  # # # # increment total area reset pair a and b to []
  # # # else if stick + 1 === pair b[0]
  # # # # pairb[1] = stick+1
  # # # # pairb[2] = "+"
  # # # # get largest area of pair_a and pair_b
  # # # # increment total area reset pair a and b to []
  # # # else if pair[b] - 1 === stick +1
  # # # # new_pair_b_0 = pair b[0]-1
  # # # # pair_b = [new_pair_b_0,stick+1,"-+"]
  # # # else pair b is a dud
  # # # # pair b[0] = stick
  # # else if pair_b length is 0
  # # # # pair b[0] = stick
  # return total area
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
