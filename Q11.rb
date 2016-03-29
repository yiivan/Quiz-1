module HelperMethods
  def titleize(string)
    array = string.downcase.split
    result = []
    for word in array
      if word != "in" && word != "the" && word != "of" && word != "and" && word != "or" && word != "from"
        result << word.capitalize
      else
        result << word
      end
    end
    result.join(" ")
  end
end
