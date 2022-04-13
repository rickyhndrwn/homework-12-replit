class FoodController < ApplicationController
  def index
    @foods = params[:letter].nil? ? Food.all : Food.by_letter(params[:letter])
  end

  def show
    @food = Food.find_by(id: params[:id])
  end
end
