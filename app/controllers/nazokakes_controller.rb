class NazokakesController < ApplicationController
  def index
    @question = Question.random
    @answer = Answer.random
    @heart = Heart.random
  end
end

