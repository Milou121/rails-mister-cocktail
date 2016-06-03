class DosesController < ApplicationController

  def index
    @doses = Dose.all
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def show
    @doses = Dose.find(params[:id])
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.save!
    redirect_to cocktail_path(@cocktail)
  end

  def edit
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredients = Ingredient.all
  end

  def update
    @dose = Dose.find(params[:id])
    @dose.update(dose_params)
    redirect_to dose_path(@dose)
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    redirect_to cocktail_path(@cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
