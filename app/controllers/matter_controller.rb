class MatterController < ApplicationController
  
  def index
    @matter = Matter.all
  end

  def new
    @matter = Matter.new
  end

  def create
    # Matter.create(matter_params)
    # redirect_to matter_index_path
    @matter = Matter.new(matter_params)

    if @matter.save
      redirect_to matter_index_path
    else
      render 'matter/new'
    end
  end

  private
  def matter_params
    params.require(:matter).permit(:name, :price, :category, :description, :filingday, :skill )
  end
end
