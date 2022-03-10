class ResolutionsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def new
    @resolution = Resolution.new
  end

  def create
    @resolution = Resolution.new(resolution_params)
    if @resolution.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    resolution = Resolution.find(params[:id])
    resolution.destroy
    redirect_to root_path
  end

  def show
    @resolution = Resolution.find(params[:id])
  end

  def edit
    @resolution = Resolution.find(params[:id])
  end

  def update
    resolution = Resolution.find(params[:id])
    if resolution.update(resolution_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def resolution_params
    params.require(:resolution).permit(:erroe_message, :language, :status, :code, :cauce).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
