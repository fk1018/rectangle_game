# you are creating a rectangle builder that returns the sum of all the rectangles you can create
# you are given an array of side lengths
# each side can be used for only one rectangle
# it takes two sides of the same length to make a pair
# it takes two pairs to create a rectangle
# you may increase a side by + or - 1
# all four sides of a rectangle cannot be the same size
def play_game(sticks)
end


# tests
array1 = [1, 5, 1, 2, 3, 9, 3, 2, 2, 5]
array2 = [2, 3, 3, 2, 4, 4, 5, 5]
array3 = [4, 4, 4, 4, 5, 5, 5, 5]
array4 = [2, 3, 1, 6, 7, 8]
array5 = [8, 7, 7, 8, 9, 6, 6, 9]
puts play_game(array1) == 30
puts play_game(array2) == 42
puts play_game(array3) == 50
puts play_game(array4) == 0
puts play_game(array5) == 146
puts play_game(array6) == 12
