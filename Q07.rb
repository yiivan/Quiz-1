module HelperMethods
  
  def titleize(string)
    array = string.downcase.split
    for word in array
      if word != "in" && word != "the" && word != "of" && word != "and" && word != "or" && word != "from"
        word.capitalize!
      end
    end
    array.join(" ")
  end
end
