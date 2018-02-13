require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    all = ('a'..'z').to_a
    @letters = all.sample(10)
  end

  def score
    @answer = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
    word_serialized = open(url).read
    word_json = JSON.parse(word_serialized)
    isenglish = word_json["found"]
    raise
    result = true
    @answer.each do |letter|
      if result == true
        @letters.include? ("letter")
        return result
      else
        result = false
      end
    end

    if result & isenglish


    else
      @score = "the word is false"

  end

end







