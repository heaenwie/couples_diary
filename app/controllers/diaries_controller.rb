class DiariesController < ApplicationController
  before_action :authenticate_user!

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    if @diary.save
      current_user.update_attribute('diary_id', @diary.id)
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
    @diaries = Diary.all
  end

  def show
    if params[:id].to_i == current_user.diary_id
      @diary = Diary.find(params[:id])
    else
      flash[:warning] = "nonononono ACCESS"
      redirect_to root_url
    end
  end

  private

  def diary_params
    params.require(:diary).permit(:name)
  end
end
