# Write your code here.
def dictionary
  substitute = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "be" => "b"
  }
  substitute
end

def word_substituter(string)
  string.split(" ").each do |word|
    #puts word
    dictionary.each do |key, elem|
      if word.downcase == key
        string = string.gsub(/\b#{word}\b/, elem)
      end
    end
  end
  string
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    return word_substituter(string)
  end
  return string
end

def shortened_tweet_truncator(string)
  str = selective_tweet_shortener(string)
  if str.length > 140
    str = str[0..136] << "..."
  end
  str
end





