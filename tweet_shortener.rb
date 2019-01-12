# Write your code here.
require"pry"
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  } 
end

def word_substituter(tweet)
  tweet_arr = tweet.split(" ")
  revised = tweet_arr.map do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word]
    else
      word
    end
  end
  revised.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

# word_substituter("GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!")