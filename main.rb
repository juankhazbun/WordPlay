# Main file 
#
# Author::    Juan Carlos Hazbun Nieto <juankhazbun@gmail.com>

require_relative 'word_play'

# Create object of word play
word_play = WordPlay.new

# Load dictionary
word_play.load_dictionary("files/test.txt")

# Check for anagrams in the dictionary
anagrams = word_play.check_for_anagrams

# Print the anagrams
anagrams.each { |list| puts list.join(", ") }

puts "\n#{anagrams.size} groups of anagrams found."
