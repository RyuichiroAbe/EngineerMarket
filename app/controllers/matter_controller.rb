class MatterController < ApplicationController

  before_action :baria_user, only: [:edit, :destroy]
  
  def index
    @matter = Matter.all
  end

  def new
    @matter = Matter.new
  end

  def create
    @matter = Matter.new(matter_params)

    if @matter.save
      redirect_to matter_index_path
    else
      render 'matter/new'
    end
  end

  def edit
    @matter = Matter.find(params[:id])
  end

  def update
    @matter = Matter.find(params[:id])
    @matter.update(matter_params)
    redirect_to matter_index_path
  end

  def destroy
    @matter = Matter.find(params[:id])

    @matter.destroy
    redirect_to request.referer
  end

  private
  def matter_params
    params.require(:matter).permit(:name, :price, :category, :description, :filingday, :skill ).merge(user_id: current_user.id)
  end

  def baria_user
    unless Matter.find(params[:id]).user_id.to_i == current_user.id
        flash[:notice] = "権限がありません"
        redirect_to matter_index_path
    end
   end

end
