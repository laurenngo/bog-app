class DogsController < ApplicationController

  def index
    @message = "hello world!"

  end


  def list
    @dogs = Dog.all

  end


  def new
    @dog = Dog.new

  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to @dog

  end

  def show
    @dog = Dog.find(params[:id])

  end






 private

  def dog_params

    params.require(:dog).permit(:name,:breed, :age, :description)
  end




end
