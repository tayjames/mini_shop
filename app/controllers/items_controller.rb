require 'pry'
class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
  
  def create
    merchant = Merchant.create(merchant_params)
    redirect_to '/merchants'
  end

  def new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
      item.save
      redirect_to "/items/#{item.id}"
  end

  private
  def item_params
    params.permit(:name, :price, :description, :image, :inventory)
  end

end
