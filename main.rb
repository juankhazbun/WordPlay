# Main file 
#
# Author::    Juan Carlos Hazbun Nieto <juankhazbun@gmail.com>

require_relative 'word_play'

# Create object of word play
word_play = WordPlay.new

begin
  
  # Load dictionary
  word_play.load_dictionary("files/test.txt")
  
  # Check for anagrams in the dictionary
  anagrams = word_play.check_for_anagrams
  
  # Print the anagrams
  anagrams.each { |list| puts list.join(", ") }
  
  puts "\n#{anagrams.size} groups of anagrams found.\n"
  
  # Check for anagrams in the dictionary
  ananagrams = word_play.check_for_ananagrams
  
  # Print the anagrams
  ananagrams.each { |list| puts list.join(", ") }
  
  puts "\n#{ananagrams.size} ananagrams found.\n"

rescue Errno::ENOENT
  warn "File not found."
end
