class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    raise
    @cocktail = Cocktail.find(parmas[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktails).permit(:name)
  end
end
