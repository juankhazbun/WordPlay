# This class takes a dictionary of words from a file to
# populates an array of strings. It checks wich set of 
# words of the dictionary are anagrams and ananagrams.
#
# Author::    Juan Carlos Hazbun Nieto <juankhazbun@gmail.com>

class WordPlay
  
  # Load the dictionary from a file to an array
  def load_dictionary(file)
    
    @dictionary = []
    
    # TODO: Add the exception handler for file not found
    
      # Open the file from the given path
      f = File.open(file)
      
      # Check if the file exists
      if f
        
        # Add each line of the file to the dictionary array
        f.each_line { |line| @dictionary.push line.chomp }
         
      end
  end
  
  # Check for anagrams in the dictionary
  # Return::  Array with the group of words that are anagrams
  def check_for_anagrams
      
      # Use method group_by from Enumerable to group the ananagrams
      grouped_dictionary = @dictionary.group_by { |element| element.downcase.chars.sort }.values
     
      # Select the anagrams words
      anagram = grouped_dictionary.select { |k| k.size > 1 }
  end
  
  # Print loaded dictionary
  def print_dictionary
    # Print the dictionary words
    puts @dictionary.join(", ")
  end
end