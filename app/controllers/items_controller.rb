class ItemsController < ApplicationController
  

  before_action :set_item, only: [:edit, :update, :show, :destroy, ]
  
  before_action :authenticate_user!, only: [:new]

  before_action :search_product, only: [:index, :search]

  def index
     @items = Item.all 
     @results = @p.result(dinctinct: true) 
     set_product_column
     @results = @p.result.includes(:item_name,:authr) 
  end
  
  # def search
  #   @results = @p.result.includes(:item_name,:authr) 
     
  # end

  def new
    @item = Item.new
  end
 
  def create
    @item = Item.new(item_params)
     if @item.valid?
      @item.save  
       return redirect_to root_path
     else
       render "new"
     end 
    
  end


  def edit
  end

  def show
  end

  def update
    if@item.update(item_params)
    redirect_to @item
    else
    render :edit
    end
  end

  def destroy  
    if@item.destroy
    redirect_to root_path
    else
    render :edit
    end
  end


    private

  def item_params
     params.require(:item).permit( 
       :item_name, 
       :authr, 
       :category_id, 
       :second_category_id, 
       :info,
       :image,
       :valuation
      ) 
      .merge(user_id: current_user.id)
  end

  def search_product
    @p = Item.ransack(params[:q])  
  end

  def set_product_column
    @item_name = Item.select("item_name").distinct  
    @item_authr = Item.select("authr").distinct
  end

  def set_item
      @item = Item.find(params[:id])
  end
  
  
end

