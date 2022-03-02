class ErrorsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @errors = Error.includes(:user).order("created_at DESC")
  end

  def new
    @error = Error.new
  end

  def create
    @error =  Error.new(error_params)
    if @error.save
      redirect_to root_path 
    else
      render :new
    end
  end

  def search
    @errors = Error.search(params[:keyword])
  end

  private
  def error_params
    params.require(:error).permit(:erroe_message, :language, :status, :code, :cauce).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
