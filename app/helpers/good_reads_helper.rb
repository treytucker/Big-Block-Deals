module GoodReadsHelper
  def shorten (string, word_limit = 50)
    words = string.split(/\s/)
    if words.size >= word_limit
      words[0,(word_limit-1)].join(" ") + '...'
    else 
      string
    end
  end
  

end
