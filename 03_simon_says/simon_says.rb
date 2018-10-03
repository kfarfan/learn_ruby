#write your code here

def echo (string)
    string
end

def shout (string)
    string.upcase
end

def repeat(string, args1 = 2)
    Array.new(args1, string).join(" ");
    
end

def start_of_word (string, n = 0) 
    string.slice(0,n)

end

def first_word (string) 
    string.slice(0, string.index(' '))
end

def titleize(string)
    list = string.split(" ")
    list[0].capitalize!
    list[1..-1].each do |word| 
      word.capitalize! unless little_word?(word)
    end
    if list.length > 1
      final_list = list.inject(""){ |line, word| line + " #{word}"}.strip
    else
      string.capitalize
    end
  end
  
  private
  
  def little_word?(string)
    ["and", "or", "of", "in", "a", "the", "over"].include?(string)
  end
