class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to '/actors/index'
    else
      render 'new'
    end
  end

private

  def actor_params
      params.require(:actor).permit(:name, :year_of_birth, :thumbnail)
  end

end
