class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @ingredients = Ingredient.all

    # How to I link to the dose and the ingredients of a
    # specific cocktail? I want to show them on
    # the show page of the cocktails!!
    # @dose = Dose.find(params[:cocktail_id])
  end

  def new
    @cocktail = Cocktail.new
    # @ingredients = Ingredient.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save!
    redirect_to cocktail_path(@cocktail)
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo, :photo_cache)
  end


end
