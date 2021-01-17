class BirdsController < ApplicationController
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: { id: bird.id, name: bird.name, species: bird.species }
    else
      render json: { message: 'Bird not found' }
    end
  end
  
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end
end
