class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show

  end

  def new
    # setup the instance to be used on the form
    @pet = Pet.new
  end

  def create
    # raise
    # initialize new instance with attributes coming from the form
    @pet = Pet.new(pet_params)
    @pet.save

    redirect_to pet_path(@pet)
  end

  def edit
    # setup the instance to be used on the form

  end

  def update
    # raise

    @pet.update(pet_params)

    redirect_to pet_path(@pet)
  end

  def destroy

    @pet.destroy

    redirect_to pets_path
  end

  private

  # RAILS FILTER
  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    # {"authenticity_token"=>"[FILTERED]", "pet"=>{"name"=>"Dew", "address"=>"Mountain USA", "found_on"=>"2023-08-01", "species"=>"lizard"}, "commit"=>"Create Pet"}
    # {"name"=>"Dew", "address"=>"Mountain USA", "found_on"=>"2023-08-01", "species"=>"lizard"}
    params.require(:pet).permit(:name, :address, :found_on, :species, :adopted)
  end
end
