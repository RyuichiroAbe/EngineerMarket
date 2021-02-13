class MatterController < ApplicationController
  def index
    @matter = Matter.all
  end

  def new
    @matter = Matter.new
  end

  def create
    Matter.create(matter_params)
    redirect_to matter_index_path
  end

  private
  def matter_params
    params.require(:matter).permit(:name, :price, :category, :description, :filingday, :skill )
  end
end
