# Main file 
#
# Author::    Juan Carlos Hazbun Nieto <juankhazbun@gmail.com>

require_relative 'word_play'

# Create object of word play
word_play = WordPlay.new

# Load dictionary
word_play.load_dictionary("files/test.txt")

# Print loaded dictionary
word_play.print_dictionary
