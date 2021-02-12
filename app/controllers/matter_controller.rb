class MatterController < ApplicationController
  def index
    @matter = Matter.all
  end
end
