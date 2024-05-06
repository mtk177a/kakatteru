class HeartsController < ApplicationController
  def new
    @heart = Heart.new
  end

  def create
    @heart = Heart.new(heart_params)
    if @heart.save
      redirect_to hearts_path, success: 'Heart was successfully created.'
    else
      render :new
    end
  end

  private

  def heart_params
    params.require(:heart).permit(:content)
  end
end
