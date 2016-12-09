class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      flash[:success] = "Diary created!"
      redirect_to root_url
    else
      render 'main/index'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
  
  def diary_params
    params.require(:diary).permit(:name)
  end
end
