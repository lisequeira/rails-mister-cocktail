class CocktailsController < ApplicationController

   before_action :set_cocktail, only: [:edit, :update, :show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def edit
  end

  def create
    @cocktail = Cocktail.new(set_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end

  end

  def update
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
  end

  def destroy
    @cocktail.destroy
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def set_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
