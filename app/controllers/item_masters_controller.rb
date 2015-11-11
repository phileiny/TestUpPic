class ItemMastersController < ApplicationController
   def index
    @item_master = ItemMaster.all
  end

  def show
    @item_master = ItemMaster.find(params[:id])
  end

  def new
    @item_master = ItemMaster.new
  end

  def create
    @item_master = ItemMaster.new(item_master_params)
    if @item_master.save
      redirect_to @item_master, notice: "Successfully created ItemMaster."
    else
      render :new
    end
  end

  def edit
    @item_master = ItemMaster.find(params[:id])
  end

  def update
    @item_master = ItemMaster.find(params[:id])
    if @item_master.update(item_master_params)
      redirect_to @item_master, notice: "Successfully updated ItemMaster."
    else
      render :edit
    end
  end

  def destroy
    @item_master = ItemMaster.find(params[:id])
    @item_master.destroy
    redirect_to item_masters_path, notice: "Successfully destroyed ItemMaster."
  end

  private

  def item_master_params
    # params.require(:item_master).permit(:title, :item_color=>[:name], :item_detail=>[:size_name])
    #params.require(:item_master).permit(:title, item_colors_attributes: [:name,  item_details_attributes: [:size_name]])
    params.require(:item_master).permit(:title, item_colors_attributes: [:id, :name, :_destroy,  item_details_attributes: [:id, :size_name, :_destroy]])

  end
end
