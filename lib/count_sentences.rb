require 'pry'

# self.end_with?
  # self - string on which the method is being called
  # end_with? - return true or false value. no if statement necessary
class String

  def sentence? 
    self.end_with?(".")
  end

  def question?
    self.end_with?("?") 
  end

  def exclamation?
    self.end_with?("!")
  end

  # binding.pry self  "one. two. three?"

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
    binding.pry
  end
end