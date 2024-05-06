class NazokakesController < ApplicationController
  skip_before_action :require_login, only: [:index]

  def index
    @question = Question.random
    @answer = Answer.random
    @heart = Heart.random

    tweet_content = "**ランダムなぞかけ**\n\n【#{@question.content}】とかけて\n【#{@answer.content}】と解く\nその心は、どちらも【#{@heart.content}】\n#かかってる #なぞかけ\n\nkakatteru.onrender.com"
    @encoded_text = URI.encode_www_form_component(tweet_content)
  end
end
