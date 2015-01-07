# This class takes a dictionary of words from a file to
# populates an array of strings. It checks wich set of 
# words of the dictionary are anagrams and ananagrams.
#
# Author::    Juan Carlos Hazbun Nieto <juankhazbun@gmail.com>

class WordPlay
  
  attr_reader :dictionary
  
  # Load the dictionary from a file to an array
  def load_dictionary(file)
    
    @dictionary = []
    
      # Open the file from the given path
      f = File.open(file)
      
      # Check if the file exists
      if f
        
        # Add each line of the file to the dictionary array
        f.each_line { |line| @dictionary.push line.chomp }
         
      else
         
         # Raise file not found exception
         raise Errno::ENOENT
      end
  end
  
  # Check for anagrams in the dictionary
  # Return::  Array with the group of words that are anagrams
  def check_for_anagrams
      
      # Group array
      grouped_dictionary = group_array
     
      # Select the anagrams words
      anagram = grouped_dictionary.select { |k| k.size > 1 }
  end
  
  # Check for ananagrams in the dictionary
  # Return::  Array with the words that are ananagrams
  def check_for_ananagrams
      
      # Group array
      grouped_dictionary = group_array
     
      # Select the anagrams words
      ananagram = grouped_dictionary.select { |k| k.size == 1 }
  end
  
  # Print loaded dictionary
  #def print_dictionary
  #  # Print the dictionary words
  #  puts @dictionary.join(", ")
  #end
  
  private
  # Group the words in an array ordering the letters of the words
  def group_array
    
      # Use method group_by from Enumerable to group the words that are equal
      grouped_dictionary = @dictionary.group_by { |element| element.downcase.chars.sort }.values
  end
end