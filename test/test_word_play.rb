# Class to execute test case of the word play class
#
# Author::  Juan Carlos Hazbun Nieto <juankhazbun@gmail.com>

require_relative "../word_play"
require "test_helper"

class TestWordPlay < Minitest::Test
  
  context 'word play' do
  
    setup do
      @word_play = WordPlay.new
    end
    
    should "raise exception when the file is not found" do
      assert_raises(Errno::ENOENT) { @word_play.load_dictionary("") }    
    end
    
    should "stored in an array each line of the file" do
      @word_play.load_dictionary("./files/test.txt")
      assert_equal ['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'], @word_play.dictionary
    end
  end
end
