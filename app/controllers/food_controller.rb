class FoodController < ApplicationController
  def index
    @foods = params[:letter].nil? ? Food.all : Food.by_letter(params[:letter])
  end

  def show
    @food = Food.find_by(id: params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(params.require(:food).permit(:name, :description, :price))
    
    if @food.save
      redirect_to food_index_path(@food)
      # redirect_to('/food/show')
    else
      render('food/new')
    end
  end

  def edit
    @food = Food.find_by(id: params[:id])
  end

  def destroy
    @food = Food.find_by(id: params[:id])
    @food.destroy
    redirect_to food_url
  end
end
