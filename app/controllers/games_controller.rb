require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    letters = ('A'..'Z').to_a
    @random_letters = letters.sample(10)

  end

  def scoregit 
    exist(words)
  end

  def exist(words)
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
    return user["found"]
  end

end
