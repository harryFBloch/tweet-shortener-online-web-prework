# Write your code here.
require 'pry'

def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4"
  }
end

def word_substituter(tweet_one)
  dict = dictionary()
  tempArray = []
  tweetArray = tweet_one.split(" ")
  tweetArray.each {|word| 
    addingWord = word
    dictionary.each {|key, value|
    #puts "key= #{key} word= #{word} value= #{value}"
      if word.downcase == key
       addingWord = value
      end
    }
    tempArray << addingWord
  }
  returnTweet = tempArray.join(" ")
end

def selective_tweet_shortener(tweet_one)
  if tweet_one.length > 140
    return word_substituter(tweet_one)
  else
    return tweet_one
  end
end

def bulk_tweet_shortener(tweetArray)
  tweetArray.each {|tweet| puts word_substituter(tweet)}
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  puts tweet
  tweet
end