class WorldPlay
  
  # load a dictionary words to an array
  def load_dictionary(file)
    
    # start with and empty array
    dictionary = []
    
    # TODO: Remember to add the exception handler
    
      # Open the file
      f = File.open(file)
      
      # Check if the file exists
      if f
        
        # add each line of the file to the dictionary array
        f.each_line {|line| puts line.strip}
        
      end
  end
end

anagram = WorldPlay.new
anagram.load_dictionary("files/wl.txt")
