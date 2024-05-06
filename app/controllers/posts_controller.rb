class PostsController < ApplicationController
  skip_before_action :require_login, only: [:index]

  def index
    @questions = Question.all
    @answers = Answer.all
    @hearts = Heart.all
    @posts = (@questions + @answers + @hearts).sort_by(&:created_at).reverse!
  end

  def new
    @question = current_user.questions.build
    @answer = current_user.answers.build
    @heart = current_user.hearts.build
  end

  def create
    model_class = [Question, Answer, Heart].find { |m| params.key?(m.name.underscore) }
    @post = current_user.send(model_class.name.underscore.pluralize).new(post_params(model_class))

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
