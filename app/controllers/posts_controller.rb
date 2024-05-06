class PostsController < ApplicationController
  def index
    @questions = Question.all
    @answers = Answer.all
    @hearts = Heart.all
    @posts = (@questions + @answers + @hearts).sort_by(&:created_at)
  end

  def new
    @question = Question.new
    @answer = Answer.new
    @heart = Heart.new
  end

  def create
    model_class = [Question, Answer, Heart].find { |m| params.key?(m.name.underscore) }
    @post = model_class.new(post_params(model_class))

    if @post.save
      redirect_to posts_path, notice: "#{model_class.name} was successfully created."
    else
      render :new
    end
  end

  private

  def post_params(model_class)
    params.require(model_class.name.underscore.to_sym).permit(:content)
  end
end
