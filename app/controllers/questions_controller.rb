class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)
    if @question.save
      redirect_to posts_path, success: 'Question was successfully created.'
    else
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(:content)
  end
end
