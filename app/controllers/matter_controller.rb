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

  def edit
    @matter = Matter.find(params[:id])
  end

  def update
    @matter = Matter.find(params[:id])
    @matter.update(matter_params)
    redirect_to matter_index_path

    # if @matter.update(matter_params[:id])
    #   redirect_to matter_index_path
    # else
    #   render :new
    # end
  end

  def destroy
    @matter = Matter.find(params[:id])

    @matter.destroy
    redirect_to request.referer
  end

  private
  def matter_params
    params.require(:matter).permit(:name, :price, :category, :description, :filingday, :skill )
  end
end
