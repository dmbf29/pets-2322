class PetsController < ApplicationController
  # /pets
  def index
    @pets = Pet.all
  end

  # /pets/1
  def show
    @pet = Pet.find(params[:id])
  end

  # /pets/new
  def new
    # for the form builder, we create an empty instance:
    @pet = Pet.new
  end

  # comes from submitting the form
  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet)
    else
      # dont go to another action, stay here and show the view which has the form again
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def pet_params
    # Strong params => filtered attributes for a pet
    params.require(:pet).permit(:name, :location, :found_on, :species)
  end
end
