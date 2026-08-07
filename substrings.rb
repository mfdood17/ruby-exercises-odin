def substrings (string, dictionary)
  dictionary.reduce(Hash.new(0)) do |result, words| 
    stringcpy = string.dup
    while (stringcpy.include?(words) == true) do
      result[words] += 1
      stringcpy.slice!(stringcpy.index(words), words.length)
    end
    result
  end
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]