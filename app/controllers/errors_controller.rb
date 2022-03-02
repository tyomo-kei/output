class ErrorsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @errors = Error.all
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

  private
  def error_params
    params.require(:error).permit(:erroe_message, :language, :status, :code, :cauce)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
