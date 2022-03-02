class ResolutionsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @resolutions = Resolution.includes(:user).order("created_at DESC")
  end

  def new
    @resolution = Resolution.new
  end

  def create
    @resolution =  Resolution.new(error_params)
    if @resolution.save
      redirect_to root_path 
    else
      render :new
    end
  end

  def search
    @resolutions = Resolution.search(params[:keyword])
  end

  private
  def error_params
    params.require(:resolution).permit(:erroe_message, :language, :status, :code, :cauce).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

