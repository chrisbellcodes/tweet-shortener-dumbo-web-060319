require 'pry'

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" =>"4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "Hello" => "Hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" =>"4",
    "Be" => "B",
    "You" => "U",
    "At" => "@"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  d_key_arr = dictionary.keys
  d_vals_arr = dictionary.values
  shortened_arr = []

  tweet_array.each do |word|
    d_key_arr.each_with_index do |key, index|
      if key == word
        word = d_vals_arr[index]
      end
    end
    shortened_arr.push(word)
  end
  shortened_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
   word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    trunc_tweet = tweet[0, 137] + "..."
  else
    tweet
  end
end
