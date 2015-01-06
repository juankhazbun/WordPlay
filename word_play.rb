# This class takes a dictionary of words from a file to
# populates an array of strings. It checks wich set of 
# words of the dictionary are anagrams and ananagrams.
#
# Author::    Juan Carlos Hazbun Nieto <juankhazbun@gmail.com>

class WordPlay
  
  # Load the dictionary from a file to an array
  def load_dictionary(file)
    
    @dictionary = []
    
      # Open the file from the given path
      f = File.open(file)
      
      # Check if the file exists
      if f
        
        # Add each line of the file to the dictionary array
        f.each_line { |line| @dictionary.push line.chomp }
         
      end
  end
  
  # Print loaded dictionary
  def print_dictionary
    # Print the dictionary words
    puts @dictionary.join(", ")
  end
end