class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(name: food_params[:name], measurement_unit: food_params[:measurement_unit], price: food_params[:price], quantity: food_params[:quantity], user_id: current_user.id)
    if @food.save
      redirect_to root_path, notice: 'Food is successfully created'
    else
      render :new, alert: 'Food is not successfully created'
    end
  end

  def destroy
    @food = Food.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price, :quantity, user_id: current_user.id)
  end
end
