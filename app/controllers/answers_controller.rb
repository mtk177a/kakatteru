class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @answer = current_user.answers.new(answer_params)
    if @answer.save
      redirect_to answers_path, success: 'Answer was successfully created.'
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
